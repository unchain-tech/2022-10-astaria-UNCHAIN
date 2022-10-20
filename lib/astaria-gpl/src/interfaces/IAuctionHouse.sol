pragma solidity ^0.8.13;

pragma experimental ABIEncoderV2;

interface IAuctionHouse {
    struct Auction {
        // The current highest bid amount
        uint256 currentBid;
        // The length of time to run the auction for, after the first bid was made
        uint64 duration;
        uint64 maxDuration;
        // The time of the first bid
        uint64 firstBidTime;
        uint256 reservePrice;
        uint256[] recipients;
        address token;
        address bidder;
        address initiator;
        uint256 initiatorFee;
    }

    event AuctionCreated(uint256 indexed tokenId, uint256 duration, uint256 reservePrice);

    event AuctionReservePriceUpdated(uint256 indexed tokenId, uint256 reservePrice);

    event AuctionBid(uint256 indexed tokenId, address sender, uint256 value, bool firstBid, bool extended);

    event AuctionDurationExtended(uint256 indexed tokenId, uint256 duration);

    event AuctionEnded(uint256 indexed tokenId, address winner, uint256 winningBid, uint256[] recipients);

    event AuctionCanceled(uint256 indexed tokenId);

    function createAuction(uint256 tokenId, uint256 duration, address initiator, uint256 initiatorFee)
        external
        returns (uint256);

    function createBid(uint256 tokenId, uint256 amount) external;

    function endAuction(uint256 tokenId) external returns (address);

    function cancelAuction(uint256 tokenId, address canceledBy) external;

    function auctionExists(uint256 tokenId) external returns (bool);

    function getAuctionData(uint256 tokenId)
        external
        view
        returns (uint256 amount, uint256 duration, uint256 firstBidTime, uint256 reservePrice, address bidder);
}

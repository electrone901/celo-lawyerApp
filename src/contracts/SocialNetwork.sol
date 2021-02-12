pragma solidity ^0.5.0;

contract SocialNetwork {
    string public name;
    uint256 public postCount = 0;
    mapping(uint256 => Post) public posts;

    struct Post {
        uint256 id;
        string content;
        uint256 tipAmount;
        address author;
    }

    event PostCreated(
        uint256 id,
        string content,
        uint256 tipAmount,
        address author
    );

    constructor() public {
        name = "Social Network";
    }

    function createPosts(string memory _content) public {
        // Require valid content
        require(bytes(_content).length > 0);
        postCount++;
        posts[postCount] = Post(postCount, _content, 0, msg.sender);
        // Trigger event
        emit PostCreated(postCount, _content, 0, msg.sender);
    }


    function tipPost(uint _id) public {
      // Fetch the author
      Post memory _post = post[_id];
      // Pay author
      address _author = post.author;
      // Increment the tip ammount
      // Update the post
      posts[_id] = _post
      // Trigger an event
    }
}

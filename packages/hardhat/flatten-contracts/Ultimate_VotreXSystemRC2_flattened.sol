
// File: @openzeppelin/contracts/interfaces/draft-IERC6093.sol


// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// File: @openzeppelin/contracts/utils/Pausable.sol


// OpenZeppelin Contracts (last updated v5.0.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;


/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    bool private _paused;

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// File: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;


/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// File: @openzeppelin/contracts/token/ERC20/ERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;





/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     * ```
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// File: @openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/ERC20Pausable.sol)

pragma solidity ^0.8.20;



/**
 * @dev ERC20 token with pausable token transfers, minting and burning.
 *
 * Useful for scenarios such as preventing trades until the end of an evaluation
 * period, or having an emergency switch for freezing all token transfers in the
 * event of a large bug.
 *
 * IMPORTANT: This contract does not include public pause and unpause functions. In
 * addition to inheriting this contract, you must define both functions, invoking the
 * {Pausable-_pause} and {Pausable-_unpause} internal functions, with appropriate
 * access control, e.g. using {AccessControl} or {Ownable}. Not doing so will
 * make the contract pause mechanism of the contract unreachable, and thus unusable.
 */
abstract contract ERC20Pausable is ERC20, Pausable {
    /**
     * @dev See {ERC20-_update}.
     *
     * Requirements:
     *
     * - the contract must not be paused.
     */
    function _update(address from, address to, uint256 value) internal virtual override whenNotPaused {
        super._update(from, to, value);
    }
}

// File: @openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/ERC20Burnable.sol)

pragma solidity ^0.8.20;



/**
 * @dev Extension of {ERC20} that allows token holders to destroy both their own
 * tokens and those that they have an allowance for, in a way that can be
 * recognized off-chain (via event analysis).
 */
abstract contract ERC20Burnable is Context, ERC20 {
    /**
     * @dev Destroys a `value` amount of tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function burn(uint256 value) public virtual {
        _burn(_msgSender(), value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, deducting from
     * the caller's allowance.
     *
     * See {ERC20-_burn} and {ERC20-allowance}.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least
     * `value`.
     */
    function burnFrom(address account, uint256 value) public virtual {
        _spendAllowance(account, _msgSender(), value);
        _burn(account, value);
    }
}

// File: VotreXToken.sol

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;




contract VotreXToken is ERC20, ERC20Burnable, ERC20Pausable {
    constructor(uint256 _initialMintedToken, uint256 _MaxSupplies)
        ERC20("VotreXToken", "VOX")
    {
        Owner = msg.sender;
        MAXSupply = _MaxSupplies * 10 ** decimals();
        _mint(address(this),  _initialMintedToken * 10 ** decimals());
        activeSystem = true;
        currentMintAmount = (_MaxSupplies - _initialMintedToken) * 10 ** decimals();
    }

    address private Owner;
    bool private activeSystem;
    uint256 public immutable MAXSupply;
    uint256 private currentMintAmount;

    mapping (address Owner => IContract) public ContractStorage;

    struct IContract{
        address Authorized;
        address stakingContract;
        address dexContract;
        address VotreXContract;
        address interfaceContract;
    }

    modifier onlyOwner() {
        require(
            msg.sender == Owner, "Caller is not an Owner"
        );
        _;
    }

    modifier onlyInterface() {
        require(
            msg.sender == ContractStorage[Owner].interfaceContract, "Caller is not an interface"
        );
        _;
    }

    modifier onlyExecutor(){
        require(msg.sender == ContractStorage[Owner].Authorized);
        _;
    }

    modifier onlyAuthorized() {
        require(
            msg.sender == ContractStorage[Owner].interfaceContract ||
            msg.sender == Owner, "Token - Caller is not an Authorized"
        );
        _;
    }

    modifier onlyPaused() {
        require(
            activeSystem == false, "System still active"
        );
        _;
    }

    function customApprove(address owner, address spender, uint256 amount) external onlyInterface {
        _approve(owner, spender, amount);
    }

    function pause() public onlyOwner {
        require(activeSystem == true, "System is Paused");
        _pause();
        activeSystem = false;
    }

    function Activate() public onlyOwner {
        require(activeSystem == false, "System is Activated");
        _unpause();
        activeSystem = true;
    }

    function setAutomationExecutor(address _executorAddress) external onlyOwner onlyPaused {
        require(
            _executorAddress != address(0),
            "Invalid contract address"
        );
        require(
            _executorAddress != ContractStorage[msg.sender].Authorized,
            "Already Registered Executor"
        );
        ContractStorage[msg.sender].Authorized = _executorAddress;
    }

    function setStakingContract(address _stakingContractAddress) external onlyOwner onlyPaused {
        require(
            _stakingContractAddress != address(0),
            "Invalid contract address"
        );
        require(
            _stakingContractAddress != ContractStorage[msg.sender].stakingContract,
            "Already Registered Staking"
        );
        ContractStorage[msg.sender].stakingContract = _stakingContractAddress;
    }

    function setDexContract(address _DEXContractAddress) external onlyOwner onlyPaused {
        require(
            _DEXContractAddress != address(0),
            "Invalid contract address"
        );
        require(
            _DEXContractAddress != ContractStorage[msg.sender].dexContract,
            "Already Registered DEX"
        );
        ContractStorage[msg.sender].dexContract = _DEXContractAddress;
    }

    function setInterface(address _InterfaceContractAddress) external onlyOwner onlyPaused {
        require(
            _InterfaceContractAddress != address(0),
            "Invalid contract address"
        );
        require(
            _InterfaceContractAddress != ContractStorage[msg.sender].interfaceContract,
            "Already Registered Interface"
        );
        ContractStorage[msg.sender].interfaceContract = _InterfaceContractAddress;
    }

    function setVotreXContract(address _VotreXContractAddress) external onlyOwner onlyPaused {
        require(
            _VotreXContractAddress != address(0),
            "Invalid contract address"
        );
        require(
            _VotreXContractAddress != ContractStorage[msg.sender].VotreXContract,
            "Already Registered VotreX"
        );
        ContractStorage[msg.sender].VotreXContract = _VotreXContractAddress;
    }

    function checkBlockTime() public view returns(uint256) {
        return block.timestamp;
    }

    function calculateHalving() public view returns (uint256) {
        uint256 nextMint = currentMintAmount / 2;

        return nextMint;
    }

    function autoMinting() public onlyExecutor{
        require(totalSupply() < MAXSupply, "Max Supply Reached");

        if (currentMintAmount == 0) {
            uint256 finalMintingValue = MAXSupply - totalSupply() ;
            _mint(address(this), finalMintingValue);
        } else {
            uint256 mintingValue = calculateHalving();
            _mint(address(this), mintingValue);
            currentMintAmount = mintingValue;

        }
    }

    function mint(address to, uint256 amount) public onlyAuthorized {
        if (msg.sender == ContractStorage[Owner].interfaceContract) {
            require(totalSupply() < MAXSupply);
            _mint(to, amount);
        } else if (msg.sender == Owner) {
            uint256 mintingValue = amount * 10**decimals();
            require(totalSupply() < MAXSupply);
            require(amount < 4000000);
            _mint(to, mintingValue);
            currentMintAmount =  currentMintAmount / 2;
        }
    }

    function burn(uint256 value) public onlyOwner override {
        uint256 burnedValue = value * 10**decimals();
        _burn(address(this), burnedValue);
    }

    function getCurrentMintAmount() external view returns(uint256){
        return currentMintAmount;
    }

    function getOwnerAddress() external view onlyOwner returns(address) {
        return(Owner);
    }

    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Pausable)
    {
        super._update(from, to, value);
    }

}
// File: VotreXTxInterface.sol


pragma solidity ^0.8.20;

contract VotreXTXInterface {

    constructor(address _tokenAddress) {
        InterfaceMaster = msg.sender;
        interfaceActivated = false;
        vxtToken = VotreXToken(_tokenAddress);
        ContractStorage[msg.sender].tokenContract = _tokenAddress;
    }

    // gas: 646200;

    VotreXToken internal immutable vxtToken;
    bool private interfaceActivated;
    address private VotreXContract;
    address private dexContract;
    address private airdropContract;
    address private stakingContract;
    address private immutable InterfaceMaster;
    uint256 internal immutable MaxAllowances = 15000000 * 10 ** 18;

    mapping(address InterfaceMaster => IContract) public ContractStorage;
    // mapping(address => uint256) public allowances;

    struct IContract{
        address Authorized;
        address tokenContract;
        address stakingContract;
        address dexContract;
        address VotreXContract;
        address airdropContract;
    }

    modifier onlyActivated() {
        require(interfaceActivated == true, "Interface not Active");
        _;
    }

    modifier onlyPaused() {
        require(interfaceActivated == false, "Interface still Active");
        _;
    }

    modifier onlyStaking() {
        require(
            msg.sender == stakingContract,
            "Interface - Caller is not a Stake Contract"
        );
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == InterfaceMaster, "Interface - Caller is not Owner!");
        _;
    }

    modifier onlyDeX() {
        require(msg.sender == dexContract, "Interface - Caller is not DexApps!");
        _;
    }

    modifier onlyAuthorized() {
        require(
            msg.sender == dexContract ||
            msg.sender == stakingContract ||
            msg.sender == VotreXContract ||
            msg.sender == airdropContract,
            "Interface - Caller is not an Authorized!"
        );
        _;
    }

    event BuyVXTEvent(address Buyer, uint256 VXTTransfered);
    event TransferedVXTEvent(address Receiver, uint256 VXTTransfered);
    event withdrawnToken(address from, address Receiver, uint256 VXTTransfered);
    event VotedEvent(address Voter, uint256 VotedPower);
    event TokenDropped(address Recipient, uint256 DroppedValue);

    function changeSystemState() external onlyOwner{

        if (interfaceActivated == false) {
            interfaceActivated = true;
        } else if (interfaceActivated == true) {
            interfaceActivated = false;
        }

    }

    function isActivatedInterfaceCheck() public view returns (bool isActivatedInterface) {

        return interfaceActivated;
    }

    function getTokenContract() external view onlyOwner returns(address){
        return ContractStorage[msg.sender].tokenContract;
    }

    function setVotreXSys (address _VotreXContract) external onlyOwner onlyPaused{
        require(
            _VotreXContract != ContractStorage[msg.sender].VotreXContract,
            "Interface - Registered VotreX"
        );

        require(
            _VotreXContract != address(0),
            "Interface - Invalid contract address"
        );

        VotreXContract = _VotreXContract;
        ContractStorage[msg.sender].VotreXContract = _VotreXContract;
    }

    function setStakingContract (address _stakingAddress) external onlyOwner onlyPaused{
        require(
            _stakingAddress != ContractStorage[msg.sender].stakingContract,
            "Interface - Registered VotreX Staking"
        );

        require(
            _stakingAddress != address(0),
            "Interface - Invalid contract address"
        );

        stakingContract = _stakingAddress;
        ContractStorage[msg.sender].stakingContract = _stakingAddress;
    }

    function setDeX (address _dexContract) external onlyOwner onlyPaused{
        require(
            _dexContract != ContractStorage[msg.sender].dexContract,
            "Interface - Registered VotreX DeX"
        );

        require(
            _dexContract != address(0),
            "Invalid contract address"
        );

        dexContract = _dexContract;
        ContractStorage[msg.sender].dexContract = _dexContract;
    }

    function setAirdrop (address _AirdropContract) external onlyOwner onlyPaused{
        require(
            _AirdropContract != ContractStorage[msg.sender].airdropContract,
            "Interface - Registered VotreX Airdrop"
        );

        require(
            _AirdropContract != address(0),
            "Invalid contract address"
        );

        airdropContract = _AirdropContract;
        ContractStorage[msg.sender].airdropContract = _AirdropContract;
    }

    function approveTxInterface(uint32 amount) external onlyOwner {
        uint256 TokenConversion = uint256(amount) * 10 ** vxtToken.decimals();

        require(address(this) != address(0), "Interface - Invalid address");
        require(TokenConversion < MaxAllowances, "Can not approve more than limit");

        vxtToken.customApprove(address(vxtToken), address(this), TokenConversion);
    }

    function approveVotreX(uint256 amount) external onlyAuthorized onlyActivated{
        uint256 TokenConversion = amount * 10 ** vxtToken.decimals();

        require(msg.sender != address(0), "Interface - VotreX Address not set");
        require(TokenConversion < MaxAllowances, "Can not approve more than limit");

        vxtToken.customApprove(msg.sender, address(this), TokenConversion);
    }

    function approveAirdrop(uint256 amount) external onlyAuthorized onlyActivated{
        uint256 TokenConversion = amount * 10 ** vxtToken.decimals();

        require(address(this) != address(0), "Interface - Invalid address");
        require(TokenConversion < MaxAllowances, "Can not approve more than limit");

        vxtToken.customApprove(msg.sender, address(this), TokenConversion);
    }

    function approveStaking(uint256 amount) external onlyAuthorized onlyActivated{
        uint256 TokenConversion = amount * 10 ** vxtToken.decimals();

        require(msg.sender != address(0), "Interface - Staking Address not set");
        require(amount < MaxAllowances, "Interface - Can not approve more than limit");

        vxtToken.customApprove(msg.sender, address(this), TokenConversion);
    }

    function approveDeX(uint256 amount) external virtual onlyAuthorized onlyActivated{
        uint256 TokenConversion = amount * 10 ** vxtToken.decimals();

        require(msg.sender != address(0), "Interface - DeX Address not set");
        require(TokenConversion < MaxAllowances, "Interface - Can not approve more than limit");

        vxtToken.customApprove(msg.sender, address(this), TokenConversion);
    }

    function checkApprovalLimit(address _ContractAddress) external view returns (uint256){
        if(_ContractAddress == ContractStorage[msg.sender].VotreXContract){
            return (
                vxtToken.allowance(
                    ContractStorage[msg.sender].VotreXContract, address(this)
                )
            );
        }
        else if(_ContractAddress == ContractStorage[msg.sender].dexContract){
            return (
                vxtToken.allowance(
                    ContractStorage[msg.sender].dexContract, address(this)
                )
            );
        }
        else if(_ContractAddress == ContractStorage[msg.sender].stakingContract){
            return (
                vxtToken.allowance(
                    ContractStorage[msg.sender].stakingContract, address(this)
                )
            );
        }
        else if(_ContractAddress == ContractStorage[msg.sender].airdropContract){
            return (
                vxtToken.allowance(
                    ContractStorage[msg.sender].airdropContract, address(this)
                )
            );
        }
        else {
            return (404);
        }
    }

    function checkBalance(address account) external view virtual onlyActivated returns (uint256) {
        return vxtToken.balanceOf(account);
    }

    function balanceTx(address _Recipient, uint256 _value) external onlyOwner{
        uint256 vxtNominalTransfer = _value * 10 ** vxtToken.decimals();

        if (
            _Recipient == ContractStorage[msg.sender].VotreXContract
        ) {
            if (
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
                &&
                vxtToken.allowance(msg.sender, address(this)) >= vxtNominalTransfer
            )
            {
                vxtToken.transferFrom(address(vxtToken), VotreXContract, vxtNominalTransfer);
            } else {
                vxtToken.customApprove(msg.sender, _Recipient, vxtNominalTransfer);
                vxtToken.customApprove(msg.sender, address(this), vxtNominalTransfer);

                vxtToken.transferFrom(address(vxtToken), VotreXContract, vxtNominalTransfer);
            }
        } else if (
            _Recipient == ContractStorage[msg.sender].dexContract
        ) {
            if (
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
                &&
                vxtToken.allowance(msg.sender, address(this)) >= vxtNominalTransfer
            )
            {
                vxtToken.transferFrom(address(vxtToken),dexContract, vxtNominalTransfer);
            }
            else {
                vxtToken.customApprove(msg.sender, _Recipient, vxtNominalTransfer);
                vxtToken.customApprove(msg.sender, address(this), vxtNominalTransfer);

                vxtToken.transferFrom(address(vxtToken), dexContract, vxtNominalTransfer);
            }
        } else if (_Recipient == InterfaceMaster) {
            require(_value < 4000000, "Interface - Transfer limit Reached");
            require(msg.sender == InterfaceMaster, "Interface - Not Authorized");

            // Case for Interface Master
            if (
                vxtToken.allowance(msg.sender, address(this)) >= vxtNominalTransfer
                &&
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
            ){
                vxtToken.transferFrom(address(vxtToken), address(InterfaceMaster), vxtNominalTransfer);
            } else {
                vxtToken.customApprove(address(vxtToken), address(this), vxtNominalTransfer);
                vxtToken.customApprove(address(vxtToken), InterfaceMaster, vxtNominalTransfer);

                vxtToken.transferFrom(address(vxtToken), msg.sender, vxtNominalTransfer);

                emit TransferedVXTEvent(msg.sender, vxtNominalTransfer);
            }
        }else if (
            _Recipient != InterfaceMaster||
            _Recipient != ContractStorage[msg.sender].dexContract ||
            _Recipient != ContractStorage[msg.sender].VotreXContract
        ){
            revert();
        }
    }

    function VotreXTx(
        address _Recipient,
        uint256 _value
    )
        external
        virtual
        onlyAuthorized
        onlyActivated
    {
        uint256 vxtNominalTransfer = _value * 10 ** vxtToken.decimals();

        if (msg.sender == VotreXContract) {
            // Case for VotreX
            if (
                vxtToken.allowance(msg.sender, address(this)) >= vxtNominalTransfer
                &&
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
            )
            {
                vxtToken.transferFrom(_Recipient, msg.sender, vxtNominalTransfer);
            }
            else {
                vxtToken.customApprove(msg.sender, _Recipient, vxtNominalTransfer);
                vxtToken.customApprove(msg.sender, address(this), vxtNominalTransfer);
                vxtToken.customApprove(_Recipient, address(this), vxtNominalTransfer);

                vxtToken.transferFrom(msg.sender, _Recipient, vxtNominalTransfer);

                emit TransferedVXTEvent(msg.sender, vxtNominalTransfer);
            }
        } else if (msg.sender == dexContract) {
            // Case for DeX
            if (
                vxtToken.allowance(msg.sender, address(this)) >= _value
                &&
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
            )
            {
                vxtToken.transferFrom(msg.sender, _Recipient, _value);
            }
            else {
                vxtToken.customApprove(msg.sender, _Recipient, _value);
                vxtToken.customApprove(msg.sender, address(this), _value);

                vxtToken.transferFrom(msg.sender, _Recipient, _value);

                emit BuyVXTEvent(msg.sender, _value);
            }
        } else if (msg.sender == stakingContract) {
            // Case for Staking Contract
            if (
                vxtToken.allowance(msg.sender, address(this)) >= _value
                &&
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
            ){
                vxtToken.transferFrom(msg.sender, _Recipient, _value); 
            }
            else {
                vxtToken.customApprove(msg.sender, _Recipient, _value);
                vxtToken.customApprove(msg.sender, address(this), _value);
                vxtToken.customApprove(_Recipient, address(this), _value);

                vxtToken.transferFrom(msg.sender, _Recipient, _value);

                emit withdrawnToken(msg.sender, _Recipient, _value);
            }
        } else if (msg.sender == airdropContract) {
            // Case for Airdrop
            if (
                vxtToken.allowance(msg.sender, address(this)) >= _value
            ){
                vxtToken.transferFrom(msg.sender, _Recipient, _value);
            }
            else {
                vxtToken.customApprove(msg.sender, _Recipient, _value);
                vxtToken.customApprove(msg.sender, address(this), _value);

                vxtToken.transferFrom(msg.sender, _Recipient, _value);

                emit TokenDropped(_Recipient, _value);
            }
        }
    }

    function VoteTx(address _Sender, uint256 _value) external onlyAuthorized onlyActivated{
        require (msg.sender == VotreXContract, "Interface - Not VotreX");

        uint256 vxtNominalTransfer = _value * 10 ** vxtToken.decimals();

        if (
            vxtToken.allowance(msg.sender, address(this)) >= vxtNominalTransfer
            &&
            vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
        ) {
            vxtToken.transferFrom(_Sender, msg.sender, vxtNominalTransfer);
        } else {
            vxtToken.customApprove(_Sender, address(this), vxtNominalTransfer);

            vxtToken.transferFrom(_Sender, msg.sender, vxtNominalTransfer);

            emit VotedEvent(msg.sender, vxtNominalTransfer);
        }
    }

    function printVXT(address _recipient, uint256 _rewardValue) external onlyAuthorized onlyActivated{
        vxtToken.mint(_recipient, _rewardValue);
    }

    function totalSupplies() external view returns(uint256) {
        return vxtToken.totalSupply();
    }

    function Stake(
        bool isStaking,
        address _Recipient,
        uint256 _value
    )
        external
        onlyAuthorized
        onlyActivated
    {
        if (
            msg.sender == stakingContract
            &&
            isStaking == true
        ) {
            // Case for Staking
            if (
                vxtToken.allowance(msg.sender, address(this)) >= _value
                &&
                vxtToken.allowance(msg.sender, _Recipient) >= _value
                &&
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
                &&
                vxtToken.allowance(msg.sender, _Recipient) >= MaxAllowances
                )
            {
                vxtToken.transferFrom(_Recipient, msg.sender, _value);
            } else {
                // Case 4: Approve and transfer
                vxtToken.customApprove(_Recipient, address(this), _value);
                vxtToken.customApprove(msg.sender, address(this), _value);
                vxtToken.customApprove(_Recipient, msg.sender, _value);

                vxtToken.transferFrom(_Recipient, msg.sender, _value);
            }
        } else if (
            msg.sender == stakingContract
            &&
            isStaking == false
        ) {
            // Case for unStaking & Reward Distribution
            if (
                vxtToken.allowance(msg.sender, address(this)) >= _value
                &&
                vxtToken.allowance(msg.sender, _Recipient) >= _value
                &&
                vxtToken.allowance(msg.sender, address(this)) >= MaxAllowances
                &&
                vxtToken.allowance(msg.sender, _Recipient) >= MaxAllowances
            )
            {
                vxtToken.transferFrom(msg.sender, _Recipient, _value);
            }
            else {
                vxtToken.customApprove(msg.sender, _Recipient, _value);

                vxtToken.transferFrom(msg.sender, _Recipient, _value);
            }
        }
    }
}

// File: UtilityLibrary.sol


pragma solidity >0.7.0;

library UtilityLibrary{

    function extractOrgId(string memory _userElectionID) internal pure returns (string memory) {
        string[] memory parts = UtilityLibrary.splitString(_userElectionID, "-");
        require(parts.length > 0, "Invalid custom election ID format");

        return parts[0];
    }

    function decodeBytes10(bytes10 data) internal pure returns (string memory) {
        string memory decodedString = new string(10);
        
        assembly {
            mstore(add(decodedString, 32), data)
        }

        return decodedString;
    }
    
    function arrayContains(string[] storage array, string memory element) internal view returns (bool) {
        for (uint256 i = 0; i < array.length; ++i) {
            if (keccak256(abi.encodePacked(array[i])) == keccak256(abi.encodePacked(element))) {
                return true;
            }
        }
        return false;
    }
    
    function onlyAlphanumericCharacters(string memory _input) internal pure returns (bool) {
        bytes memory b = bytes(_input);
        for (uint i = 0; i < b.length; ++i) {
            if (!((uint8(b[i]) >= 48 && uint8(b[i]) <= 57) || // 0-9
                (uint8(b[i]) >= 65 && uint8(b[i]) <= 90) || // A-Z
                (uint8(b[i]) >= 97 && uint8(b[i]) <= 122))) { // a-z
                return false;
            }
        }
        return true;
    }

    function appendToStringArray(string[] memory array, string memory newValue) internal pure returns (string[] memory) {
        string[] memory newArray = new string[](array.length + 1);
        
        for (uint32 i = 0; i < array.length; ++i) {
            newArray[i] = array[i];
        }
        
        newArray[array.length] = newValue;
        
        return newArray;
    }

    function containsWhitespaceCheck(string memory _str) internal pure returns (bool) {
        bytes memory strBytes = bytes(_str);

        for (uint256 i = 0; i < strBytes.length; ++i) {
            if (strBytes[i] == " ") {
                return true; 
            }
        }

        return false; 
    }


    function uintToString(uint48 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0";
        }

        uint48 temp = value;
        uint48 length;
        while (temp != 0) {
            length++;
            temp /= 10;
        }

        bytes memory buffer = new bytes(length);
        uint48 i = length - 1;
        while (value != 0) {
            buffer[i] = bytes1(uint8(48 + value % 10));
            value /= 10;
            i--;
        }

        return string(buffer);
    }

    function uint2str(uint _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            ++len;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len;
        while (_i != 0) {
            k = k-1;
            uint8 temp = (48 + uint8(_i - _i / 10 * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }


    function compareStrings(string memory a, string memory b) internal pure returns (bool) {
        return (keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b)));
    }

    function splitString(string memory str, string memory delimiter) internal pure returns (string[] memory) {
        bytes memory strBytes = bytes(str);
        bytes memory delimiterBytes = bytes(delimiter);

        uint delimiterCount = 1;
        for (uint i = 0; i < strBytes.length; ++i) {
            if (strBytes[i] == delimiterBytes[0]) {
                ++delimiterCount;
            }
        }

        string[] memory parts = new string[](delimiterCount);

        uint partStart = 0;
        uint partIndex = 0;
        for (uint i = 0; i < strBytes.length; ++i) {
            if (strBytes[i] == delimiterBytes[0]) {
                parts[partIndex] = substring(str, partStart, i);
                partStart = i + 1;
                partIndex++;
            }
        }

        // Add the last part
        parts[partIndex] = substring(str, partStart, strBytes.length);

        return parts;
    }

    function substring(string memory str, uint startIndex, uint endIndex) internal pure returns (string memory) {
        bytes memory strBytes = bytes(str);
        require(startIndex <= endIndex && endIndex <= strBytes.length, "Invalid substring indices");

        bytes memory result = new bytes(endIndex - startIndex);
        for (uint i = startIndex; i < endIndex; ++i) {
            result[i - startIndex] = strBytes[i];
        }

        return string(result);
    }

    function extractOrgIdFromElectionId(string memory _userElectionID) internal pure returns (string memory) {
        bytes memory orgIdBytes = bytes(_userElectionID);

        // Split the input string at the hyphen ('-')
        uint8 i = 0;
        while (i < orgIdBytes.length && orgIdBytes[i] != '-'){  // ASCII code for hyphen '-'
            ++i;
        }

        // If a hyphen is found, extract the organization ID
        if (i < orgIdBytes.length) {
            bytes memory extractedBytes = new bytes(i);
            for (uint8 j = 0; j < i; ++j) {
                extractedBytes[j] = orgIdBytes[j];
            }
            return string(extractedBytes);
        }

        return "";
    }

    function concat(string memory _a, string memory _b) internal pure returns (string memory) {
        return string(abi.encodePacked(bytes(_a), bytes(_b)));
    }


}
// File: Ultimate_VotreXSystemRC2.sol


// pragma abicoder v2;
pragma solidity ^0.8.20;

contract VotreXSystem{

    using UtilityLibrary for *;

    constructor(address _TXInterfaceAddress){
        VotreXOwnerAddress = msg.sender;
        VotreXActivated = false;
        TxInterface = VotreXTXInterface(_TXInterfaceAddress);
    }

    VotreXTXInterface internal immutable TxInterface;
    bool private VotreXActivated;
    address private previousVotreXOwnerAddress;
    address private VotreXOwnerAddress;
    bytes32 public VotreXOwnerName = keccak256(abi.encode("ATom"));
    uint256 private organizationsCounter;
    uint256 private VotreXUserCounter;
    uint256 private OrganizationPriceFee = 20 ether;
    
    mapping(string  => Organization) public organizationData;
    mapping(address => ElectionAdmins) public admin;
    mapping(address => Voter) public voters;
    mapping(bytes32 => ElectionDetail) public electionInfo;
    mapping(string  => ElectionResult) public electionResults;
    mapping(bytes32 => ActiveElectionList) private activeElection;
    mapping(bytes32 => bool) private electionExistanceChecks;
    mapping(bytes16 => bool) private votersIDExists;
    mapping(address => bool) private registeredAdmin;

    enum ElectionStatus {
        Preparation,
        Scheduled,
        Started,
        Finished
    }

    enum OrganizationType {
        Organization,
        Corporate
    }

    struct Organization {
        OrganizationType orgType;
        address electionAdminAddresses;
        uint256 electionEventCounter;
        uint256 totalMembers;
        bytes32 orgName;
        string orgID;
    }

    struct ElectionAdmins {
        bool isRegistered;
        uint8 adminOrgCount;
        bytes10 AdminVoterIDOrg1;
        bytes10 AdminVoterIDOrg2;
        address electionAdminAddress;
        uint256 nextOrgCreationBlock;
        bytes32 adminName;
        string RegisteredOrgID1;
        string RegisteredOrgID2;
    }

    struct ActiveElectionList{
        bytes32 orgID;
        bytes32 activeElectionID;
    }

    struct ElectionResult {
        bool isPruned;
        address adminAddress;
        uint startTime; 
        uint endTime;
        uint totalVoter;
        bytes32 electionName;
        bytes32 digitalSignature;
        string registeredOrganization;
        string electionWinner;
        string signedBy;
    }
    
    struct Voter{
        bool isRegistered;
        address VoterAddress;
        bytes16 VoterIDOrg1;
        bytes16 VoterIDOrg2;
        string VoterName;
        string RegisteredOrgID1;
        string RegisteredOrgID2;
        string[] participatedElectionEvents;
    }

    struct ElectionDetail{
        ElectionStatus status;
        uint8 candidateList;
        bool isFinished;
        bytes32 electionID;
        bytes32 electionName;
        uint startTime;
        uint endTime;
        string orgID;
        CandidateDetail[] candidates;
    }

    struct CandidateDetail{
        uint8 candidateID;
        uint256 candidateVoteCount;
        string candidateName;
    }

    modifier onlyOrgAdmin(string memory _IDParameters) {
        bool isAdminRegisteredForOrg = false;
        if (
            keccak256(abi.encodePacked(admin[msg.sender].RegisteredOrgID1))
            ==
            keccak256(abi.encodePacked(_IDParameters))
            ||
            keccak256(abi.encodePacked(admin[msg.sender].RegisteredOrgID2))
            ==
            keccak256(abi.encodePacked(_IDParameters))
        ) {
            isAdminRegisteredForOrg = true;
        } else if (
            bytes32(abi.encodePacked(admin[msg.sender].RegisteredOrgID1))
            !=
            bytes32(abi.encodePacked(_IDParameters))
            ||
            bytes32(abi.encodePacked(admin[msg.sender].RegisteredOrgID2))
            !=
            bytes32(abi.encodePacked(_IDParameters))
        ) {
            string memory orgID = UtilityLibrary.extractOrgId(_IDParameters);
            isAdminRegisteredForOrg = true;

        }

        require(
            isAdminRegisteredForOrg,
            "Admin not in this organization"
        );
        _;
    }

    modifier onlyAuthorizedMember(string memory _userElectionID) {
        string memory orgID = UtilityLibrary.extractOrgId(_userElectionID);

        bool isAdminRegisteredForOrg = (
            keccak256(abi.encodePacked(admin[msg.sender].RegisteredOrgID1))
            ==
            keccak256(abi.encodePacked(orgID))
        )||(
            keccak256(abi.encodePacked(admin[msg.sender].RegisteredOrgID2))
            ==
            keccak256(abi.encodePacked(orgID))
        );

        bool isVoterRegisteredForOrg = (
            keccak256(abi.encodePacked(voters[msg.sender].RegisteredOrgID1))
            ==
            keccak256(abi.encodePacked(orgID))
        )||(
            keccak256(abi.encodePacked(voters[msg.sender].RegisteredOrgID2))
            ==
            keccak256(abi.encodePacked(orgID))
        );

        require(
            isAdminRegisteredForOrg || isVoterRegisteredForOrg,
            "You are not an authorized member"
        );
        _;
    }

    modifier canCreateOrg() {
        require(
            block.number >= admin[msg.sender].nextOrgCreationBlock,
            "Wait for the next block to create a new org"
        );
        _;
    }

    modifier onlyVotreXOwner() {
        require(
            msg.sender == VotreXOwnerAddress,
            "Not the contract owner"
        );
        _;
    }

    modifier onlyWhenActivated() {
        require(
            VotreXActivated == true,
            "System is not activated"
        );
        _;
    }

    // event Received(address UserAddress, uint256 FLRSent);

    function approveSystem(uint256 amount) external onlyVotreXOwner {
        require(
            amount > 0,
            "Amount can not 0"
        );

        TxInterface.approveVotreX(amount);
    }

    function buyContract(string memory _YourName) public payable {
        require(VotreXActivated == false);
        require(msg.value == 12 ether, "Please send 12 Ether");

        previousVotreXOwnerAddress = VotreXOwnerAddress;
        VotreXOwnerAddress = address(0);
        VotreXOwnerName = keccak256(abi.encodePacked(_YourName));

        payable(previousVotreXOwnerAddress).transfer(msg.value);

        previousVotreXOwnerAddress = address(0);
        VotreXOwnerAddress = msg.sender;
    }

    function CheckTokenBalance () external view onlyVotreXOwner returns (uint256) {
        return TxInterface.checkBalance(address(this));
    }

    function changeSystemState() external onlyVotreXOwner{
        if (VotreXActivated == false) {
            require(VotreXActivated == false, "Activated!");
            VotreXActivated = true;
        } else if (VotreXActivated == true) {
            require(VotreXActivated == true, "Paused!");
            VotreXActivated = false;
        }
    }

    function setOrgPriceFee(uint256 _PriceinEther) external onlyVotreXOwner {
        OrganizationPriceFee = _PriceinEther * 1 ether;
    }

    receive() external payable {
        // emit Received(msg.sender, msg.value);
    }

    function registerOrganization(
        string memory _orgName,
        string memory _orgID,
        string memory _adminName,
        OrganizationType _orgType
    )
        external
        payable
        canCreateOrg
        onlyWhenActivated
    {
        uint8 VXTAmount = 5;
        ElectionAdmins storage AdminInfo = admin[msg.sender];

        require(
            msg.value == OrganizationPriceFee,
            "Please send correct amount"
        );

        require(
            organizationsCounter < 32000,
            "Maximum Organization reached"
        );

        require(
            bytes32(organizationData[_orgID].orgName).length > 0,
            "Organization name is registered"
        );

        require(
            organizationData[_orgID].electionAdminAddresses == address(0),
            "Organization ID is registered"
        );

        require(
            UtilityLibrary.onlyAlphanumericCharacters(_orgID),
            "Org ID should be alphanumeric"
        );

        require(
            bytes(_orgName).length > 0,
            "Please fill Organization Name"
        );

        require(
            bytes(_orgName).length < 32,
            "Org name can't exceed 32"
        );

        require(
            bytes(_adminName).length > 1,
            "Admin name can't be empty"
        );

        require(
            bytes(_orgID).length == 3 || bytes(_orgID).length == 4,
            "Org ID should 3 or 4 characters"
        );

        require(
            !UtilityLibrary.containsWhitespaceCheck(_orgID),
            "spaces in Org ID not allowed"
        );

        require(
            keccak256(abi.encodePacked(admin[msg.sender].RegisteredOrgID1))
            !=
            keccak256(abi.encodePacked(_orgID))
            &&
            keccak256(abi.encodePacked(admin[msg.sender].RegisteredOrgID2))
            !=
            keccak256(abi.encodePacked(_orgID)),
            "Admin is registered in organization"
        );

        Organization storage newOrg = organizationData[_orgID];
        newOrg.orgID = _orgID;
        newOrg.orgName = bytes32(abi.encodePacked(_orgName));
        newOrg.orgType = _orgType;
        newOrg.electionAdminAddresses = msg.sender;
        newOrg.electionEventCounter = 0;
        newOrg.totalMembers = 1;

        bytes10 UniqueAdminvoterID = bytes10(abi.encodePacked(_orgID, "-", "Admin"));

        if (bytes(admin[msg.sender].RegisteredOrgID1).length == 0) {
            admin[msg.sender].RegisteredOrgID1 = _orgID;
            admin[msg.sender].AdminVoterIDOrg1 = UniqueAdminvoterID;
        } else if (bytes(admin[msg.sender].RegisteredOrgID2).length == 0) {
            admin[msg.sender].RegisteredOrgID2 = _orgID;
            admin[msg.sender].AdminVoterIDOrg2 = UniqueAdminvoterID;
        }

        AdminInfo.electionAdminAddress = msg.sender;
        AdminInfo.adminName = bytes32(abi.encodePacked(_adminName));
        AdminInfo.isRegistered = true;
        ++AdminInfo.adminOrgCount;

        registeredAdmin[msg.sender] = true;
        votersIDExists[UniqueAdminvoterID] = true;

        AdminInfo.nextOrgCreationBlock = 50 + block.number;

        ++organizationsCounter;
        ++VotreXUserCounter;

        TxInterface.VotreXTx(msg.sender, VXTAmount);
    }

    

    function registerVoter(
        string memory _voterName,
        string memory _orgID
    )
        external
        payable
        onlyWhenActivated
    {
        require(
            msg.value == (OrganizationPriceFee/2)
        );

        Voter storage voter = voters[msg.sender];
        uint8 VXTAmount = 5;
        string memory uniqueVoterID = generateUniqueVoterID(_orgID);
        bytes16 VoterID16 = bytes16(abi.encodePacked(uniqueVoterID));
        bytes32 orgIDs = keccak256(abi.encodePacked(_orgID));

        require(
            organizationData[_orgID].totalMembers < 5000,
            "Maximum member limit reached"
        );

        require(
            bytes(_voterName).length > 1,
            "Please fill Voter Name"
        );

        require(
            bytes(_voterName).length < 24,
            "Voter name over than 24 characters"
        );

        require(
            keccak256(abi.encodePacked(voters[msg.sender].RegisteredOrgID1))
            !=
            keccak256(abi.encodePacked(_orgID))
            &&
            keccak256(abi.encodePacked(voters[msg.sender].RegisteredOrgID2))
            !=
            keccak256(abi.encodePacked(_orgID))
            &&
            !registeredAdmin[msg.sender],
            "Voter is registered in Org"
        );

        require(
            !ElectionActiveCheck(orgIDs),
            "Election in progress!"
        );

        require(
            bytes(uniqueVoterID).length > 0,
            "Failed to generate unique Voter ID"
        );

        if (bytes(voter.RegisteredOrgID1).length == 0) {
            voter.RegisteredOrgID1 = _orgID;
            voter.VoterIDOrg1 = VoterID16;
        } else if (bytes(voter.RegisteredOrgID2).length == 0) {
            voter.RegisteredOrgID2 = _orgID;
            voter.VoterIDOrg2 = VoterID16;
        }

        voter.VoterAddress = msg.sender;
        voter.VoterName = _voterName;
        voter.participatedElectionEvents = new string[](0);
        voter.isRegistered = true;
        votersIDExists[VoterID16] = true;
        ++VotreXUserCounter;

        TxInterface.VotreXTx(msg.sender, VXTAmount);
    }

    function createElection(
        string memory _orgID,
        string memory _userElectionID,
        string memory _electionName,
        uint8 _candidateCount
    )
        external
        onlyWhenActivated
        onlyOrgAdmin(_orgID)
    {
        require(
            bytes(organizationData[_orgID].orgID).length > 0,
            "Org ID not found"
        );

        require(
            bytes(_userElectionID).length > 1,
            "ID can't be empty"
        
        );

        require(
            bytes(_userElectionID).length < 5,
            "ID should < 5 characters"
        );

        require(
            bytes(_electionName).length > 1,
            "Please fill name"
        );

        require(
            bytes(_electionName).length < 25,
            "Election name should < 25"
        );

        require(
            organizationData[_orgID].electionEventCounter < 10,
            "Maximum events reached"
        );

        require(_candidateCount > 1, "Minimum 2 candidates!");

        bytes32 generatedElectionID = bytes32(abi.encodePacked(_orgID, "-", _userElectionID));
        ElectionDetail storage newElection = electionInfo[generatedElectionID];

        require(
            !electionExistanceChecks[generatedElectionID],
            "Election ID exists"
        );

        newElection.orgID = _orgID;
        newElection.electionID = generatedElectionID;
        newElection.electionName = bytes32(abi.encodePacked(_electionName));
        newElection.candidateList = _candidateCount;
        newElection.status = ElectionStatus.Preparation;
        electionExistanceChecks[generatedElectionID] = true;
        ++organizationData[_orgID].electionEventCounter;
    }

    function startElection(string memory _userElectionID) external onlyOrgAdmin(_userElectionID){
        require(bytes(_userElectionID).length > 0, "Election ID can't be empty");

        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));
        bytes32 orgIDs = keccak256(abi.encodePacked(UtilityLibrary.extractOrgId(_userElectionID)));

        ElectionDetail storage election = electionInfo[userElectionID];
        require(bytes16(election.electionID).length > 0, "Election ID does not exist");
        require(election.status == ElectionStatus.Preparation, "Election is not in preparation");
        require(election.candidateList == election.candidates.length, "Candidate Not full");

        election.startTime = 5 + block.timestamp;
        election.status = ElectionStatus.Started;
        activeElection[orgIDs].orgID = orgIDs;
        activeElection[orgIDs].activeElectionID = userElectionID;
    }

    function finishElection(string memory _userElectionID)
        external
        onlyOrgAdmin(_userElectionID)
    {
        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));
        ElectionDetail storage elections = electionInfo[userElectionID];
        string memory orgName = string(abi.encodePacked(organizationData[elections.orgID].orgName));
        bytes32 orgIDs = keccak256(abi.encodePacked(UtilityLibrary.extractOrgId(_userElectionID)));
        string memory adminName = getAdminName(msg.sender);
        string memory electionName = string(abi.encodePacked(elections.electionName));
        string memory electionWinner = determineWinner(_userElectionID);
        uint256 totalVoter = calculateTotalVoter(_userElectionID);
        bytes32 dataHash = bytes32(keccak256(abi.encodePacked(orgName, electionName, adminName)));

        require(
            bytes(_userElectionID).length > 0,
            "Invalid election ID"
        );

        require(
            bytes(_userElectionID).length > 0,
            "Election ID can't be empty"
        );

        require(
            bytes32(electionInfo[userElectionID].electionID).length > 0,
            "Election ID does not exist"
        );

        require(!elections.isFinished, "Election finished");

        require(
            elections.status == ElectionStatus.Started,
            "Election is not started"
        );

        require(
            totalVoter >= calculateValidElection(_userElectionID),
            "need 50% total member to finish"
        );

        elections.endTime = 5+block.timestamp;
        elections.status = ElectionStatus.Finished;
        elections.isFinished = true;

        ElectionResult storage newelectionResult = electionResults[_userElectionID];
        newelectionResult.isPruned = true;
        newelectionResult.totalVoter = totalVoter;
        newelectionResult.adminAddress = msg.sender;
        newelectionResult.startTime = elections.startTime;
        newelectionResult.endTime = elections.endTime;
        newelectionResult.digitalSignature = dataHash;
        newelectionResult.registeredOrganization = elections.orgID;
        newelectionResult.electionName = elections.electionName;
        newelectionResult.electionWinner = electionWinner;
        newelectionResult.signedBy = adminName;
        removeFromActiveElections(orgIDs);

        delete electionInfo[userElectionID];
    }

    function calculateValidElection(string memory _userElectionID)
        private
        view
        returns (uint256)
    {
        string memory orgID = UtilityLibrary.extractOrgId(_userElectionID);
        Organization storage OrgData = organizationData[orgID];
        uint256 MIN_VOTES_PERCENTAGE = 1 + (OrgData.totalMembers / 2);

        return MIN_VOTES_PERCENTAGE;
    }

    function getOwnerAddress() external view returns (address) {
        return VotreXOwnerAddress;
    }

    function getOwnerName() external view returns (bytes32) {
        return VotreXOwnerName;
    }

    // function getTotalOrg()external view returns (uint256) {
    //     return organizationsCounter;
    // }

    function getTotalUser() external view returns (uint256) {
        return VotreXUserCounter;
    }

    function getAdminName(address adminAddress) private view returns (string memory) {
        return string(abi.encodePacked(admin[adminAddress].adminName));
    }

    function addCandidateDetail(
        string memory _userElectionID,
        string memory _candidateName
    )
        external
        onlyOrgAdmin(_userElectionID)
    {
        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));
        ElectionDetail storage election = electionInfo[userElectionID];

        require(bytes(_userElectionID).length > 0);

        require(
            bytes32(electionInfo[userElectionID].electionID).length > 0,
            "Election ID does not exist"
        );

        require(
            election.candidates.length < election.candidateList,
            "Candidate limit reached"
        );

        require(bytes(_candidateName).length > 0);

        require(
            bytes(_candidateName).length <= 24,
            "name limits 24 characters"
        );

        require(
            UtilityLibrary.onlyAlphanumericCharacters(_candidateName),
            "Candidate name can only contain alphabetical"
        );

        uint8 candidateID = uint8(election.candidates.length);

        election.candidates.push(
            CandidateDetail({
                candidateID: candidateID,
                candidateName: _candidateName,
                candidateVoteCount: 0
            })
        );
    }

    function vote(
        string memory _userElectionID,
        uint8 candidateID, uint256 VotesAmount
    )
        external
        onlyWhenActivated
        onlyAuthorizedMember(_userElectionID)
    {
        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));
        ElectionDetail storage election = electionInfo[userElectionID];
        Voter storage voter = voters[msg.sender];
        bytes32 electionName = election.electionName;
        require(VotesAmount <= 5);
        require(bytes(_userElectionID).length > 0, "Election ID can't be empty");
        require(candidateID < election.candidates.length, "Invalid candidate ID");
        require(election.status == ElectionStatus.Started, "Election is not in progress");
        require(!hasParticipatedInElection(msg.sender, electionName), "You already voted in this election");

        ++election.candidates[candidateID].candidateVoteCount;
        election.candidates[candidateID].candidateVoteCount += VotesAmount;
        voter.participatedElectionEvents = UtilityLibrary.appendToStringArray(
            voter.participatedElectionEvents,
            string(abi.encodePacked(election.electionName))
        );
        TxInterface.VoteTx(msg.sender, VotesAmount);
    }


    function withdrawFees(uint8 VXTAmount) external onlyVotreXOwner{
        payable(VotreXOwnerAddress).transfer(address(this).balance);
        TxInterface.VotreXTx(msg.sender, VXTAmount);
    }

    function isVotreXActivated() external onlyVotreXOwner view returns (bool) {
        return VotreXActivated;
    }

    function getRegistrationFee() external view returns (uint256){
        return OrganizationPriceFee;
    }

    // function getTotalOrganization() external virtual view returns (uint256) {
    //     return organizationsCounter;
    // }

    function getCandidateDetail(
        string memory _userElectionID,
        string memory _candidateName
    )
        external
        view
        returns(
            bool success,
            string memory candidateName,
            uint8 candidateID,
            uint256 voteCount
        )
    {
        require(
            bytes(_userElectionID).length > 0,
            "Election ID can't be empty"
        );

        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));
        ElectionDetail storage election = electionInfo[userElectionID];

        for (uint32 i = 0; i < election.candidates.length; ++i) {
            if (
                keccak256(abi.encodePacked(election.candidates[i].candidateName))
                ==
                keccak256(abi.encodePacked(_candidateName))
            ) {
                return (
                    true,
                    election.candidates[i].candidateName,
                    election.candidates[i].candidateID,
                    election.candidates[i].candidateVoteCount
                );
            }
        }

        return (false,'', 0, 0);

    }

    function getelectionInfo(string memory _userElectionID)
        external
        view
        returns(
            bytes32 electionID,
            string memory electionName,
            uint256 totalCandidates,
            string[] memory candidateNames,
            uint[] memory voteCounts
        )
    {
        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));

        ElectionDetail storage election = electionInfo[userElectionID];
        require(
            bytes32(election.electionID).length > 0,
            "Election ID does not exist"
        );

        electionID = election.electionID;
        electionName = string(abi.encodePacked (election.electionName));
        totalCandidates = election.candidates.length;
        candidateNames = new string[](totalCandidates);
        voteCounts = new uint[](totalCandidates);

        for (uint256 i = 0; i < totalCandidates; ++i) {
            candidateNames[i] = election.candidates[i].candidateName;
            voteCounts[i] = election.candidates[i].candidateVoteCount;
        }

        return (
            electionID,
            electionName,
            totalCandidates,
            candidateNames, voteCounts
        );
    }

    function getCurrentVoteResult(string memory _userElectionID)
        external
        view
        returns (
            CandidateDetail[] memory
        )
    {
        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));
        ElectionDetail storage election = electionInfo[userElectionID];

        require(bytes(_userElectionID).length > 0, "Election ID can't be empty");

        require(election.status == ElectionStatus.Started, "Election is not in progress");

        return election.candidates;
    }

    function getUserInfo() external view returns (
        bool isRegistered,
        address userAddress,
        string memory userName,
        string[] memory registeredOrgList,
        string[] memory voterIDList,
        string[] memory participatedElectionEvents
    ) {
        userAddress = msg.sender;

        if (admin[userAddress].isRegistered) {
            ElectionAdmins storage adminInfo = admin[userAddress];
            
            string[] memory VoterRegisteredOrgList = new string[](2);
            VoterRegisteredOrgList[0] = adminInfo.RegisteredOrgID1;
            VoterRegisteredOrgList[1] = adminInfo.RegisteredOrgID2;

            string[] memory VoterIDList = new string[](2);
            VoterIDList[0] = string(abi.encodePacked(adminInfo.AdminVoterIDOrg1));
            VoterIDList[1] = string(abi.encodePacked(adminInfo.AdminVoterIDOrg2));

            return (
                true,
                userAddress,
                string(abi.encodePacked(adminInfo.adminName)),
                VoterRegisteredOrgList,
                VoterIDList,
                new string[](0)
            );

        } else if (voters[userAddress].isRegistered) {
            Voter storage voter = voters[userAddress];

            string[] memory RegisteredOrgIDList = new string[](2);
            RegisteredOrgIDList[0] = voter.RegisteredOrgID1;
            RegisteredOrgIDList[1] = voter.RegisteredOrgID2;

            string[] memory RegisteredVoterIDList = new string[](2);
            RegisteredVoterIDList[0] = string(abi.encodePacked(voter.VoterIDOrg1));
            RegisteredVoterIDList[1] = string(abi.encodePacked(voter.VoterIDOrg2));
            return (
                true,
                userAddress,
                voter.VoterName,
                RegisteredOrgIDList,
                RegisteredVoterIDList,
                voter.participatedElectionEvents
            );
        } else {
            return (
                false,
                userAddress,
                "",
                new string[](0),
                new string[](0),
                new string[](0)
            );
        }
    }

    function ElectionActiveCheck(bytes32 _orgID) private view returns (bool) {

        return activeElection[_orgID].activeElectionID != 0;

    }

    function removeFromActiveElections(bytes32 _orgID) private {
        delete activeElection[_orgID];
    }

    function hasParticipatedInElection(
        address voterAddress,
        bytes32 electionName
    )
        private
        view
        returns (bool)
    {
        Voter storage voter = voters[voterAddress];
        for (uint i = 0; i < voter.participatedElectionEvents.length; ++i) {
            if (
                keccak256(abi.encodePacked(voter.participatedElectionEvents[i]))
                ==
                keccak256(abi.encodePacked(electionName))
            ) {
                return true; 
            }
        }

        return false; 
    }

    function calculateTotalVoter(string memory _userElectionID) private view returns (uint256) {
        bytes8 userElectionID = bytes8(abi.encodePacked(_userElectionID));
        ElectionDetail storage election = electionInfo[userElectionID];
        uint256 totalVoter = 0;

        for (uint8 i = 0; i < election.candidates.length; ++i) {
            totalVoter += election.candidates[i].candidateVoteCount;
        }

        return totalVoter;
    }

    function determineWinner(string memory _userElectionID) private view returns (string memory) {
        bytes32 userElectionID = bytes32(abi.encodePacked(_userElectionID));
        ElectionDetail storage election = electionInfo[userElectionID];
        string memory winner = "";
        uint256 maxVotes = 0;
        for (uint8 i = 0; i < election.candidates.length; ++i) {
            if (election.candidates[i].candidateVoteCount > maxVotes) {
                maxVotes = election.candidates[i].candidateVoteCount;
                winner = election.candidates[i].candidateName;
            }
        }

        return winner;
    }
    
    function generateUniqueVoterID(string memory _orgID) public view returns (string memory) {
        uint256 CurrentID = organizationData[_orgID].totalMembers;
        uint256 nextID = ++CurrentID;

        return string(abi.encodePacked(_orgID, "-", UtilityLibrary.uint2str(nextID)));
    }

    function getOrgIDHash(string memory _orgID) external pure returns (bytes32) {
        bytes32 orgIDHash = keccak256(abi.encodePacked(_orgID));

        return (orgIDHash);
    }
}

XPTemplate priority=sub-1
XPTinclude
  \ _common/common

XPT for
LUL

XPT class
/**
 * @brief `classDescription^
 */
class `className^`$BRfun^{
public:
    /**
     * Constructors
     */
    `className^(`$SParg`ctorParam?`$SParg^);

    /*
     * Copy, move, destructor
     */
    `className^(`$SParg^const `className^ &other`$SParg^);
    `className^ &operator=(const `className^ &other);

    `className^(`$SParg^`className^ &&other`$SParg^);
    `className^ &operator=(`className^ &&other);

    virtual ~`className^();
    /*
     * Other
     */
    `cursor^
private:
};

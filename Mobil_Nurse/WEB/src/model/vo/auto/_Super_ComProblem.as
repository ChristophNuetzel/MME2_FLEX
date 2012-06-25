/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ComProblem.as.
 */

package model.vo.auto
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_ComProblem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("mobile.nurse.model.atl.communication.ComProblem") == null)
            {
                flash.net.registerClassAlias("mobile.nurse.model.atl.communication.ComProblem", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("mobile.nurse.model.atl.communication.ComProblem", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ComProblemEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_problemsPencil : String;
    private var _internal_speak : Boolean;
    private var _internal_toolsPencil : String;
    private var _internal_problemsSee : String;
    private var _internal_solutionSpeak : String;
    private var _internal_solutionPencil : String;
    private var _internal_pencil : Boolean;
    private var _internal_hand : Boolean;
    private var _internal_id : Number;
    private var _internal_solutionsSee : String;
    private var _internal_toolsSee : String;
    private var _internal_toolsEar : String;
    private var _internal_problemsEar : String;
    private var _internal_ear : Boolean;
    private var _internal_see : Boolean;
    private var _internal_problemsHand : String;
    private var _internal_toolsHand : String;
    private var _internal_toolsSpeak : String;
    private var _internal_problemsSpeak : String;
    private var _internal_solutionHand : String;
    private var _internal_solutionEar : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ComProblem()
    {
        _model = new _ComProblemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get problemsPencil() : String
    {
        return _internal_problemsPencil;
    }

    [Bindable(event="propertyChange")]
    public function get speak() : Boolean
    {
        return _internal_speak;
    }

    [Bindable(event="propertyChange")]
    public function get toolsPencil() : String
    {
        return _internal_toolsPencil;
    }

    [Bindable(event="propertyChange")]
    public function get problemsSee() : String
    {
        return _internal_problemsSee;
    }

    [Bindable(event="propertyChange")]
    public function get solutionSpeak() : String
    {
        return _internal_solutionSpeak;
    }

    [Bindable(event="propertyChange")]
    public function get solutionPencil() : String
    {
        return _internal_solutionPencil;
    }

    [Bindable(event="propertyChange")]
    public function get pencil() : Boolean
    {
        return _internal_pencil;
    }

    [Bindable(event="propertyChange")]
    public function get hand() : Boolean
    {
        return _internal_hand;
    }

    [Bindable(event="propertyChange")]
    public function get id() : Number
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get solutionsSee() : String
    {
        return _internal_solutionsSee;
    }

    [Bindable(event="propertyChange")]
    public function get toolsSee() : String
    {
        return _internal_toolsSee;
    }

    [Bindable(event="propertyChange")]
    public function get toolsEar() : String
    {
        return _internal_toolsEar;
    }

    [Bindable(event="propertyChange")]
    public function get problemsEar() : String
    {
        return _internal_problemsEar;
    }

    [Bindable(event="propertyChange")]
    public function get ear() : Boolean
    {
        return _internal_ear;
    }

    [Bindable(event="propertyChange")]
    public function get see() : Boolean
    {
        return _internal_see;
    }

    [Bindable(event="propertyChange")]
    public function get problemsHand() : String
    {
        return _internal_problemsHand;
    }

    [Bindable(event="propertyChange")]
    public function get toolsHand() : String
    {
        return _internal_toolsHand;
    }

    [Bindable(event="propertyChange")]
    public function get toolsSpeak() : String
    {
        return _internal_toolsSpeak;
    }

    [Bindable(event="propertyChange")]
    public function get problemsSpeak() : String
    {
        return _internal_problemsSpeak;
    }

    [Bindable(event="propertyChange")]
    public function get solutionHand() : String
    {
        return _internal_solutionHand;
    }

    [Bindable(event="propertyChange")]
    public function get solutionEar() : String
    {
        return _internal_solutionEar;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set problemsPencil(value:String) : void
    {
        var oldValue:String = _internal_problemsPencil;
        if (oldValue !== value)
        {
            _internal_problemsPencil = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "problemsPencil", oldValue, _internal_problemsPencil));
        }
    }

    public function set speak(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_speak;
        if (oldValue !== value)
        {
            _internal_speak = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "speak", oldValue, _internal_speak));
        }
    }

    public function set toolsPencil(value:String) : void
    {
        var oldValue:String = _internal_toolsPencil;
        if (oldValue !== value)
        {
            _internal_toolsPencil = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "toolsPencil", oldValue, _internal_toolsPencil));
        }
    }

    public function set problemsSee(value:String) : void
    {
        var oldValue:String = _internal_problemsSee;
        if (oldValue !== value)
        {
            _internal_problemsSee = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "problemsSee", oldValue, _internal_problemsSee));
        }
    }

    public function set solutionSpeak(value:String) : void
    {
        var oldValue:String = _internal_solutionSpeak;
        if (oldValue !== value)
        {
            _internal_solutionSpeak = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "solutionSpeak", oldValue, _internal_solutionSpeak));
        }
    }

    public function set solutionPencil(value:String) : void
    {
        var oldValue:String = _internal_solutionPencil;
        if (oldValue !== value)
        {
            _internal_solutionPencil = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "solutionPencil", oldValue, _internal_solutionPencil));
        }
    }

    public function set pencil(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_pencil;
        if (oldValue !== value)
        {
            _internal_pencil = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pencil", oldValue, _internal_pencil));
        }
    }

    public function set hand(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_hand;
        if (oldValue !== value)
        {
            _internal_hand = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hand", oldValue, _internal_hand));
        }
    }

    public function set id(value:Number) : void
    {
        var oldValue:Number = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set solutionsSee(value:String) : void
    {
        var oldValue:String = _internal_solutionsSee;
        if (oldValue !== value)
        {
            _internal_solutionsSee = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "solutionsSee", oldValue, _internal_solutionsSee));
        }
    }

    public function set toolsSee(value:String) : void
    {
        var oldValue:String = _internal_toolsSee;
        if (oldValue !== value)
        {
            _internal_toolsSee = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "toolsSee", oldValue, _internal_toolsSee));
        }
    }

    public function set toolsEar(value:String) : void
    {
        var oldValue:String = _internal_toolsEar;
        if (oldValue !== value)
        {
            _internal_toolsEar = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "toolsEar", oldValue, _internal_toolsEar));
        }
    }

    public function set problemsEar(value:String) : void
    {
        var oldValue:String = _internal_problemsEar;
        if (oldValue !== value)
        {
            _internal_problemsEar = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "problemsEar", oldValue, _internal_problemsEar));
        }
    }

    public function set ear(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_ear;
        if (oldValue !== value)
        {
            _internal_ear = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ear", oldValue, _internal_ear));
        }
    }

    public function set see(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_see;
        if (oldValue !== value)
        {
            _internal_see = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "see", oldValue, _internal_see));
        }
    }

    public function set problemsHand(value:String) : void
    {
        var oldValue:String = _internal_problemsHand;
        if (oldValue !== value)
        {
            _internal_problemsHand = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "problemsHand", oldValue, _internal_problemsHand));
        }
    }

    public function set toolsHand(value:String) : void
    {
        var oldValue:String = _internal_toolsHand;
        if (oldValue !== value)
        {
            _internal_toolsHand = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "toolsHand", oldValue, _internal_toolsHand));
        }
    }

    public function set toolsSpeak(value:String) : void
    {
        var oldValue:String = _internal_toolsSpeak;
        if (oldValue !== value)
        {
            _internal_toolsSpeak = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "toolsSpeak", oldValue, _internal_toolsSpeak));
        }
    }

    public function set problemsSpeak(value:String) : void
    {
        var oldValue:String = _internal_problemsSpeak;
        if (oldValue !== value)
        {
            _internal_problemsSpeak = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "problemsSpeak", oldValue, _internal_problemsSpeak));
        }
    }

    public function set solutionHand(value:String) : void
    {
        var oldValue:String = _internal_solutionHand;
        if (oldValue !== value)
        {
            _internal_solutionHand = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "solutionHand", oldValue, _internal_solutionHand));
        }
    }

    public function set solutionEar(value:String) : void
    {
        var oldValue:String = _internal_solutionEar;
        if (oldValue !== value)
        {
            _internal_solutionEar = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "solutionEar", oldValue, _internal_solutionEar));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _ComProblemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ComProblemEntityMetadata) : void
    {
        var oldValue : _ComProblemEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}

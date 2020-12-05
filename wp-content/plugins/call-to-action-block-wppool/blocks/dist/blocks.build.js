/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./blocks/src/blocks.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./blocks/src/Edit.js":
/*!****************************!*\
  !*** ./blocks/src/Edit.js ***!
  \****************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _styleicon__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./styleicon */ "./blocks/src/styleicon.js");
function _typeof(obj) { "@babel/helpers - typeof"; if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } return _assertThisInitialized(self); }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }

var _wp$editor = wp.editor,
    InspectorControls = _wp$editor.InspectorControls,
    RichText = _wp$editor.RichText,
    ColorPalette = _wp$editor.ColorPalette;
var __ = wp.i18n.__;
var _wp$element = wp.element,
    Component = _wp$element.Component,
    Fragment = _wp$element.Fragment;
var _wp$components = wp.components,
    PanelBody = _wp$components.PanelBody,
    TextControl = _wp$components.TextControl,
    ToggleControl = _wp$components.ToggleControl;
var _wp$ctaComponents = wp.ctaComponents,
    CtaMedia = _wp$ctaComponents.CtaMedia,
    CtaLayoutSelector = _wp$ctaComponents.CtaLayoutSelector;


var Edit = /*#__PURE__*/function (_Component) {
  _inherits(Edit, _Component);

  function Edit(props) {
    var _this;

    _classCallCheck(this, Edit);

    _this = _possibleConstructorReturn(this, _getPrototypeOf(Edit).call(this, props));
    _this.toggleTarget = _this.toggleTarget.bind(_assertThisInitialized(_this));
    return _this;
  }

  _createClass(Edit, [{
    key: "componentDidMount",
    value: function componentDidMount() {
      var _this$props = this.props,
          setAttributes = _this$props.setAttributes,
          clientId = _this$props.clientId,
          uniqueId = _this$props.attributes.uniqueId;

      var _client = clientId.substr(0, 6);

      if (!uniqueId) {
        setAttributes({
          uniqueId: _client
        });
      } else if (uniqueId && uniqueId != _client) {
        setAttributes({
          uniqueId: _client
        });
      }
    }
  }, {
    key: "toggleTarget",
    value: function toggleTarget() {
      var _this$props2 = this.props,
          setAttributes = _this$props2.setAttributes,
          btn_target = _this$props2.attributes.btn_target;
      setAttributes({
        btn_target: !btn_target
      });
    }
  }, {
    key: "render",
    value: function render() {
      var _this$props3 = this.props,
          _this$props3$attribut = _this$props3.attributes,
          uniqueId = _this$props3$attribut.uniqueId,
          layout = _this$props3$attribut.layout,
          isGradientBg = _this$props3$attribut.isGradientBg,
          bgColor = _this$props3$attribut.bgColor,
          bgColor2 = _this$props3$attribut.bgColor2,
          bgImage = _this$props3$attribut.bgImage,
          title = _this$props3$attribut.title,
          description = _this$props3$attribut.description,
          btn_label = _this$props3$attribut.btn_label,
          btn_url = _this$props3$attribut.btn_url,
          btn_target = _this$props3$attribut.btn_target,
          setAttributes = _this$props3.setAttributes;
      return wp.element.createElement(Fragment, null, wp.element.createElement(InspectorControls, {
        key: "inspector"
      }, wp.element.createElement(PanelBody, {
        title: __('Layout', 'cta-gutenberg'),
        initialOpen: true
      }, wp.element.createElement(CtaLayoutSelector, {
        value: layout,
        onChange: function onChange(val) {
          return setAttributes({
            layout: val
          });
        },
        options: [{
          value: 1,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_1
        }, {
          value: 2,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_2
        }, {
          value: 3,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_3
        }, {
          value: 4,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_4
        }, {
          value: 5,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_5
        }, {
          value: 6,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_6
        }, {
          value: 7,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_7
        }, {
          value: 8,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_8
        }, {
          value: 9,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_9
        }, {
          value: 10,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_10
        }, {
          value: 11,
          styleIcon: _styleicon__WEBPACK_IMPORTED_MODULE_0__["default"].cta_layout_11
        }]
      })), wp.element.createElement(PanelBody, {
        title: __('Button', 'cta-gutenberg'),
        initialOpen: false
      }, wp.element.createElement(TextControl, {
        label: __('Link', 'cta-gutenberg'),
        value: btn_url,
        onChange: function onChange(value) {
          return setAttributes({
            btn_url: value
          });
        }
      }), wp.element.createElement(ToggleControl, {
        label: __('Open in new Window', 'cta-gutenberg'),
        checked: btn_target,
        onChange: this.toggleTarget
      })), wp.element.createElement(PanelBody, {
        title: __('Wrapper', 'cta-gutenberg'),
        initialOpen: false
      }, (layout == 8 || layout == 9) && wp.element.createElement(ToggleControl, {
        label: __('Enable Gradient', 'cta-gutenberg'),
        checked: isGradientBg,
        onChange: function onChange(state) {
          return setAttributes({
            isGradientBg: state
          });
        }
      }), wp.element.createElement("span", {
        className: "cta-field-label"
      }, __('Background Color', 'cta-gutenberg')), wp.element.createElement(ColorPalette, {
        label: __('Background Color', 'cta-gutenberg'),
        className: "cta-field",
        value: bgColor,
        onChange: function onChange(colorValue) {
          return setAttributes({
            bgColor: colorValue
          });
        },
        allowReset: true
      }), isGradientBg == 1 && (layout == 8 || layout == 9) && wp.element.createElement(Fragment, null, wp.element.createElement("span", {
        className: "cta-field-label"
      }, __('Background Color 2', 'cta-gutenberg')), wp.element.createElement(ColorPalette, {
        label: __('Background Color 2', 'cta-gutenberg'),
        className: "cta-field",
        value: bgColor2,
        onChange: function onChange(colorValue) {
          return setAttributes({
            bgColor2: colorValue
          });
        },
        allowReset: true
      })), wp.element.createElement(CtaMedia, {
        label: __('Image', 'cta-gutenberg'),
        value: bgImage,
        onChange: function onChange(val) {
          return setAttributes({
            bgImage: val
          });
        }
      }))), wp.element.createElement("div", {
        className: "call_to_action_".concat(layout, " call_to_action_").concat(uniqueId),
        style: {
          backgroundImage: "".concat(bgImage.url != undefined ? "url(".concat(bgImage.url, ")") : 'none')
        }
      }, wp.element.createElement("div", {
        className: "cta_content"
      }, wp.element.createElement(RichText, {
        tagName: "h2",
        value: title,
        placeholder: "Call to action title",
        onChange: function onChange(value) {
          return setAttributes({
            title: value
          });
        }
      }), wp.element.createElement(RichText, {
        tagName: "p",
        value: description,
        placeholder: "Call to action description",
        onChange: function onChange(value) {
          return setAttributes({
            description: value
          });
        }
      }), wp.element.createElement(RichText, {
        tagName: "a",
        className: "ctagb-btn",
        value: btn_label,
        placeholder: "Button Label",
        onChange: function onChange(value) {
          return setAttributes({
            btn_label: value
          });
        }
      }))), wp.element.createElement("style", null, layout == 1 || layout == 8 || layout == 9 ? "\n\t\t\t\t\t\t.call_to_action_".concat(uniqueId, ":after{\n\t\t\t\t\t\t\t").concat(isGradientBg == 1 ? "background-image: linear-gradient(to right, ".concat(bgColor, ", ").concat(bgColor2, ")") : "background-color: ".concat(bgColor), "\n\t\t\t\t\t\t}\n\t\t\t\t\t\t.call_to_action_").concat(uniqueId, ">.cta_content>.ctagb-btn:hover{\n\t\t\t\t\t\t\t").concat(isGradientBg == 1 ? "background-image: linear-gradient(to right, ".concat(bgColor2, ", ").concat(bgColor, ")") : "background-color: ".concat(bgColor), "\n\t\t\t\t\t\t}\n\t\t\t\t\t\t") : ".call_to_action_".concat(uniqueId, "{\n\t\t\t\t\t\t\t").concat(isGradientBg == 1 ? "background-image: linear-gradient(to right, ".concat(bgColor, ", ").concat(bgColor2, ")") : "background-color: ".concat(bgColor), "\n\t\t\t\t\t\t}\n\t\t\t\t\t\t")));
    }
  }]);

  return Edit;
}(Component);

/* harmony default export */ __webpack_exports__["default"] = (Edit);

/***/ }),

/***/ "./blocks/src/attributes.js":
/*!**********************************!*\
  !*** ./blocks/src/attributes.js ***!
  \**********************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
var attributes = {
  //basic
  uniqueId: {
    type: 'string',
    "default": ''
  },
  layout: {
    type: 'number',
    "default": 1
  },
  isGradientBg: {
    type: 'boolean',
    "default": 0
  },
  bgColor: {
    type: 'string',
    "default": '#7840FF'
  },
  bgColor2: {
    type: 'string',
    "default": '#7840FF'
  },
  bgImage: {
    type: 'object',
    "default": {
      url: cta_gutenberg_locate.plugin + 'assets/images/cta_1.png',
      alt: 'Call to action Image',
      id: 0
    }
  },
  //Content
  title: {
    type: 'string',
    "default": 'Flexi Addons For Elementor'
  },
  description: {
    type: 'string',
    "default": 'Etiam convallis elementum sapien, a aliquam turpis aliquam vitae. Praesent sollicitudin felis vel mi facilisis posuere Nulla ultrices.'
  },
  btn_label: {
    type: 'string',
    "default": 'Free trial'
  },
  btn_url: {
    type: 'string',
    "default": '#'
  },
  btn_target: {
    type: 'boolean',
    "default": 1
  }
};
/* harmony default export */ __webpack_exports__["default"] = (attributes);

/***/ }),

/***/ "./blocks/src/blockicon.js":
/*!*********************************!*\
  !*** ./blocks/src/blockicon.js ***!
  \*********************************/
/*! exports provided: ClickIcon */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ClickIcon", function() { return ClickIcon; });
var ClickIcon = function ClickIcon() {
  return wp.element.createElement("svg", {
    className: "dashicon",
    xmlns: "http://www.w3.org/2000/svg",
    xmlnsXlink: "http://www.w3.org/1999/xlink",
    version: "1.1",
    width: "24",
    height: "24",
    viewBox: "0 0 512 512"
  }, wp.element.createElement("path", {
    d: "M512,183.778V50.213c0-27.618-22.469-50.087-50.087-50.087H50.087C22.469,0.126,0,22.595,0,50.213v133.565 c0,27.618,22.469,50.087,50.087,50.087h134.9l80.628,241.883c5.054,15.161,26.613,15.195,31.678,0l26.874-80.622L431.15,502.11 c13.019,13.018,34.203,13.018,47.223,0l23.612-23.611c13.017-13.019,13.017-34.203-0.001-47.222L395.001,324.293l80.622-26.874 c15.169-5.058,15.186-26.615,0-31.678L380,233.867h81.913C489.531,233.865,512,211.396,512,183.778z M417.546,281.579 l-58.733,19.577c-11.77,3.923-15.284,18.886-6.526,27.645l126.084,126.086l-23.612,23.611L328.675,352.412 c-8.777-8.779-23.724-5.23-27.645,6.526l-19.577,58.733l-68.047-204.139C217.508,214.9,402.306,276.499,417.546,281.579z M279.825,200.475v-0.001l-87.536-29.178c-13.016-4.343-25.465,8.081-21.119,21.119l2.687,8.061H50.087 c-9.206,0-16.696-7.49-16.696-16.696V50.214c0-9.206,7.49-16.696,16.696-16.696h411.826c9.206,0,16.696,7.49,16.696,16.696V183.78 c0,9.206-7.49,16.696-16.696,16.696H279.825z"
  }));
};

/***/ }),

/***/ "./blocks/src/blocks.js":
/*!******************************!*\
  !*** ./blocks/src/blocks.js ***!
  \******************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _blockicon__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./blockicon */ "./blocks/src/blockicon.js");
/* harmony import */ var _cta_component__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./cta-component */ "./blocks/src/cta-component.js");
/* harmony import */ var _cta_component__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_cta_component__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _attributes__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./attributes */ "./blocks/src/attributes.js");
/* harmony import */ var _Edit__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./Edit */ "./blocks/src/Edit.js");
/* harmony import */ var _style_scss__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./style.scss */ "./blocks/src/style.scss");
/* harmony import */ var _style_scss__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_style_scss__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _editor_scss__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./editor.scss */ "./blocks/src/editor.scss");
/* harmony import */ var _editor_scss__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_editor_scss__WEBPACK_IMPORTED_MODULE_5__);
var _wp$editor = wp.editor,
    RichText = _wp$editor.RichText,
    MediaUpload = _wp$editor.MediaUpload,
    PlainText = _wp$editor.PlainText;
var registerBlockType = wp.blocks.registerBlockType;
var __ = wp.i18n.__;
var _wp$element = wp.element,
    Component = _wp$element.Component,
    Fragment = _wp$element.Fragment;
var Button = wp.components.Button;






registerBlockType('cta-gutenberg/cta', {
  title: __('Call to action', 'cta-gutenberg'),
  icon: _blockicon__WEBPACK_IMPORTED_MODULE_0__["ClickIcon"],
  category: 'common',
  keywords: [__('call to action', 'cta-gutenberg'), __('wppool', 'cta-gutenberg')],
  attributes: _attributes__WEBPACK_IMPORTED_MODULE_2__["default"],
  supports: {
    align: true
  },
  edit: _Edit__WEBPACK_IMPORTED_MODULE_3__["default"],
  save: function save(props) {
    var _props$attributes = props.attributes,
        uniqueId = _props$attributes.uniqueId,
        layout = _props$attributes.layout,
        isGradientBg = _props$attributes.isGradientBg,
        bgColor = _props$attributes.bgColor,
        bgColor2 = _props$attributes.bgColor2,
        bgImage = _props$attributes.bgImage,
        title = _props$attributes.title,
        description = _props$attributes.description,
        btn_label = _props$attributes.btn_label,
        btn_url = _props$attributes.btn_url,
        btn_target = _props$attributes.btn_target;
    return wp.element.createElement("div", {
      className: "call_to_action_".concat(layout, " call_to_action_").concat(uniqueId),
      style: {
        backgroundImage: "".concat(bgImage.url != undefined ? "url(".concat(bgImage.url, ")") : 'none')
      }
    }, wp.element.createElement("div", {
      className: "cta_content"
    }, wp.element.createElement("h2", null, title), wp.element.createElement("p", null, description), wp.element.createElement("a", {
      className: "ctagb-btn",
      target: btn_target ? '_blank' : '',
      rel: "noopener noreferrer",
      href: btn_url
    }, btn_label)), wp.element.createElement("style", null, layout == 1 || layout == 8 || layout == 9 ? "\n\t\t\t\t\t\t.call_to_action_".concat(uniqueId, ":after{\n\t\t\t\t\t\t\t").concat(isGradientBg == 1 ? "background-image: linear-gradient(to right, ".concat(bgColor, ", ").concat(bgColor2, ")") : "background-color: ".concat(bgColor), "\n\t\t\t\t\t\t}\n\t\t\t\t\t\t.call_to_action_").concat(uniqueId, ">.cta_content>.ctagb-btn:hover{\n\t\t\t\t\t\t\t").concat(isGradientBg == 1 ? "background-image: linear-gradient(to right, ".concat(bgColor2, ", ").concat(bgColor, ")") : "background-color: ".concat(bgColor), "\n\t\t\t\t\t\t}\n\t\t\t\t\t\t") : ".call_to_action_".concat(uniqueId, "{\n\t\t\t\t\t\t\t").concat(isGradientBg == 1 ? "background-image: linear-gradient(to right, ".concat(bgColor, ", ").concat(bgColor2, ")") : "background-color: ".concat(bgColor), "\n\t\t\t\t\t\t}\n\t\t\t\t\t\t")));
  }
});

/***/ }),

/***/ "./blocks/src/cta-component.js":
/*!*************************************!*\
  !*** ./blocks/src/cta-component.js ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports) {

function _typeof(obj) { "@babel/helpers - typeof"; if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } return _assertThisInitialized(self); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }

var Component = wp.element.Component;
var __ = wp.i18n.__;
var MediaUpload = wp.blockEditor.MediaUpload;
var Dashicon = wp.components.Dashicon;

var CtaMedia = /*#__PURE__*/function (_Component) {
  _inherits(CtaMedia, _Component);

  function CtaMedia() {
    _classCallCheck(this, CtaMedia);

    return _possibleConstructorReturn(this, _getPrototypeOf(CtaMedia).apply(this, arguments));
  }

  _createClass(CtaMedia, [{
    key: "setSettings",
    value: function setSettings(media) {
      var onChange = this.props.onChange;

      if (media && media.url) {
        onChange({
          url: media.url,
          id: media.id,
          alt: media.alt
        });
      }
    }
  }, {
    key: "removeImage",
    value: function removeImage() {
      var onChange = this.props.onChange;
      onChange({});
    }
  }, {
    key: "validateUrl",
    value: function validateUrl(url) {
      if (['wbm', 'jpg', 'jpeg', 'gif', 'png', 'svg'].indexOf(url.split('.').pop().toLowerCase()) != -1) {
        return url;
      } else {
        return cta_gutenberg_locate.plugin + 'assets/images/cta_1.png';
      }
    }
  }, {
    key: "render",
    value: function render() {
      var _this = this;

      var _this$props = this.props,
          value = _this$props.value,
          label = _this$props.label,
          className = _this$props.className;
      return wp.element.createElement("div", {
        className: "cta-field cta-field-media-selector ".concat(className ? className : '')
      }, label && wp.element.createElement("span", {
        className: "cta-field-label"
      }, label), wp.element.createElement("div", {
        className: "cta-field-content cta-field-media"
      }, wp.element.createElement(MediaUpload, {
        onSelect: function onSelect(val) {
          return _this.setSettings(val);
        },
        allowedTypes: ['image'],
        value: value,
        render: function render(_ref) {
          var open = _ref.open;
          return wp.element.createElement("div", null, value && value.url ? wp.element.createElement("div", null, wp.element.createElement("div", {
            className: "cta-single-img"
          }, wp.element.createElement("span", {
            className: "cta-media-image-parent",
            onClick: open
          }, wp.element.createElement("img", {
            src: _this.validateUrl(value.url),
            alt: value.alt
          }))), wp.element.createElement("div", {
            className: "cta-media-actions cta-field-button-list"
          }, wp.element.createElement("button", {
            className: "cta-field-button",
            "aria-label": __('Edit', 'cta-gutenberg'),
            onClick: open,
            role: "button"
          }, wp.element.createElement("span", {
            "aria-label": __('Edit', 'cta-gutenberg'),
            className: "dashicons dashicons-edit"
          })), wp.element.createElement("button", {
            className: "cta-field-button",
            "aria-label": __('Remove', 'cta-gutenberg'),
            onClick: function onClick() {
              return _this.removeImage();
            },
            role: "button"
          }, wp.element.createElement("span", {
            "aria-label": __('Close', 'cta-gutenberg'),
            className: "dashicons dashicons-no"
          })))) : wp.element.createElement("div", {
            className: "cta-single-img"
          }, wp.element.createElement("div", {
            onClick: open,
            className: "cta-placeholder-image"
          }, wp.element.createElement(Dashicon, {
            icon: "format-image"
          }))));
        }
      })));
    }
  }]);

  return CtaMedia;
}(Component);

var CtaLayoutSelector = /*#__PURE__*/function (_Component2) {
  _inherits(CtaLayoutSelector, _Component2);

  function CtaLayoutSelector() {
    _classCallCheck(this, CtaLayoutSelector);

    return _possibleConstructorReturn(this, _getPrototypeOf(CtaLayoutSelector).apply(this, arguments));
  }

  _createClass(CtaLayoutSelector, [{
    key: "render",
    value: function render() {
      var _this$props2 = this.props,
          value = _this$props2.value,
          label = _this$props2.label,
          options = _this$props2.options,
          _this$props2$columns = _this$props2.columns,
          columns = _this$props2$columns === void 0 ? 2 : _this$props2$columns,
          className = _this$props2.className,
          onChange = _this$props2.onChange;
      return wp.element.createElement("div", {
        className: "cta-field cta-field-layout ".concat(className ? className : '')
      }, label && wp.element.createElement("span", {
        className: "cta-field-label"
      }, label), wp.element.createElement("div", {
        className: "cta-field-content cta-field-layout-list"
      }, options.map(function (data, index) {
        return wp.element.createElement("div", {
          key: index,
          onClick: function onClick() {
            return onChange(data.value);
          },
          className: "".concat(value == data.value ? 'active' : '')
        }, data.styleIcon && wp.element.createElement("span", {
          className: "cta-layout-style cta-layout-style-".concat(data.value)
        }, data.styleIcon));
      })));
    }
  }]);

  return CtaLayoutSelector;
}(Component);

wp.ctaComponents = {
  CtaMedia: CtaMedia,
  CtaLayoutSelector: CtaLayoutSelector
};

/***/ }),

/***/ "./blocks/src/editor.scss":
/*!********************************!*\
  !*** ./blocks/src/editor.scss ***!
  \********************************/
/*! no static exports found */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ "./blocks/src/style.scss":
/*!*******************************!*\
  !*** ./blocks/src/style.scss ***!
  \*******************************/
/*! no static exports found */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ "./blocks/src/styleicon.js":
/*!*********************************!*\
  !*** ./blocks/src/styleicon.js ***!
  \*********************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
var styleicons = {};
styleicons.cta_layout_1 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_1"
}, wp.element.createElement("span", {
  className: "dashicons dashicons-format-image"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_2 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_2"
}, wp.element.createElement("span", {
  className: "dashicons dashicons-format-image"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_3 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_3"
}, wp.element.createElement("span", {
  className: "dashicons dashicons-format-image"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_4 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_4"
}, wp.element.createElement("span", {
  className: "dashicons"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_5 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_5"
}, wp.element.createElement("span", {
  className: "dashicons"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_6 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_6"
}, wp.element.createElement("span", {
  className: "dashicons"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_7 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_7"
}, wp.element.createElement("span", {
  className: "dashicons"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_8 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_8"
}, wp.element.createElement("span", {
  className: "dashicons dashicons-format-image"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_9 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_9"
}, wp.element.createElement("span", {
  className: "dashicons"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_10 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_10"
}, wp.element.createElement("span", {
  className: "dashicons"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
styleicons.cta_layout_11 = wp.element.createElement("span", {
  className: "cta_layout cta_layout_11"
}, wp.element.createElement("span", {
  className: "dashicons"
}), wp.element.createElement("span", {
  className: "cta-info-icon"
}));
/* harmony default export */ __webpack_exports__["default"] = (styleicons);

/***/ })

/******/ });
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vd2VicGFjay9ib290c3RyYXAiLCJ3ZWJwYWNrOi8vLy4vYmxvY2tzL3NyYy9FZGl0LmpzIiwid2VicGFjazovLy8uL2Jsb2Nrcy9zcmMvYXR0cmlidXRlcy5qcyIsIndlYnBhY2s6Ly8vLi9ibG9ja3Mvc3JjL2Jsb2NraWNvbi5qcyIsIndlYnBhY2s6Ly8vLi9ibG9ja3Mvc3JjL2Jsb2Nrcy5qcyIsIndlYnBhY2s6Ly8vLi9ibG9ja3Mvc3JjL2N0YS1jb21wb25lbnQuanMiLCJ3ZWJwYWNrOi8vLy4vYmxvY2tzL3NyYy9lZGl0b3Iuc2NzcyIsIndlYnBhY2s6Ly8vLi9ibG9ja3Mvc3JjL3N0eWxlLnNjc3MiLCJ3ZWJwYWNrOi8vLy4vYmxvY2tzL3NyYy9zdHlsZWljb24uanMiXSwibmFtZXMiOlsid3AiLCJlZGl0b3IiLCJJbnNwZWN0b3JDb250cm9scyIsIlJpY2hUZXh0IiwiQ29sb3JQYWxldHRlIiwiX18iLCJpMThuIiwiZWxlbWVudCIsIkNvbXBvbmVudCIsIkZyYWdtZW50IiwiY29tcG9uZW50cyIsIlBhbmVsQm9keSIsIlRleHRDb250cm9sIiwiVG9nZ2xlQ29udHJvbCIsImN0YUNvbXBvbmVudHMiLCJDdGFNZWRpYSIsIkN0YUxheW91dFNlbGVjdG9yIiwiRWRpdCIsInByb3BzIiwidG9nZ2xlVGFyZ2V0IiwiYmluZCIsInNldEF0dHJpYnV0ZXMiLCJjbGllbnRJZCIsInVuaXF1ZUlkIiwiYXR0cmlidXRlcyIsIl9jbGllbnQiLCJzdWJzdHIiLCJidG5fdGFyZ2V0IiwibGF5b3V0IiwiaXNHcmFkaWVudEJnIiwiYmdDb2xvciIsImJnQ29sb3IyIiwiYmdJbWFnZSIsInRpdGxlIiwiZGVzY3JpcHRpb24iLCJidG5fbGFiZWwiLCJidG5fdXJsIiwidmFsIiwidmFsdWUiLCJzdHlsZUljb24iLCJzdHlsZWljb25zIiwiY3RhX2xheW91dF8xIiwiY3RhX2xheW91dF8yIiwiY3RhX2xheW91dF8zIiwiY3RhX2xheW91dF80IiwiY3RhX2xheW91dF81IiwiY3RhX2xheW91dF82IiwiY3RhX2xheW91dF83IiwiY3RhX2xheW91dF84IiwiY3RhX2xheW91dF85IiwiY3RhX2xheW91dF8xMCIsImN0YV9sYXlvdXRfMTEiLCJzdGF0ZSIsImNvbG9yVmFsdWUiLCJiYWNrZ3JvdW5kSW1hZ2UiLCJ1cmwiLCJ1bmRlZmluZWQiLCJ0eXBlIiwiY3RhX2d1dGVuYmVyZ19sb2NhdGUiLCJwbHVnaW4iLCJhbHQiLCJpZCIsIkNsaWNrSWNvbiIsIk1lZGlhVXBsb2FkIiwiUGxhaW5UZXh0IiwicmVnaXN0ZXJCbG9ja1R5cGUiLCJibG9ja3MiLCJCdXR0b24iLCJpY29uIiwiY2F0ZWdvcnkiLCJrZXl3b3JkcyIsInN1cHBvcnRzIiwiYWxpZ24iLCJlZGl0Iiwic2F2ZSIsImJsb2NrRWRpdG9yIiwiRGFzaGljb24iLCJtZWRpYSIsIm9uQ2hhbmdlIiwiaW5kZXhPZiIsInNwbGl0IiwicG9wIiwidG9Mb3dlckNhc2UiLCJsYWJlbCIsImNsYXNzTmFtZSIsInNldFNldHRpbmdzIiwib3BlbiIsInZhbGlkYXRlVXJsIiwicmVtb3ZlSW1hZ2UiLCJvcHRpb25zIiwiY29sdW1ucyIsIm1hcCIsImRhdGEiLCJpbmRleCJdLCJtYXBwaW5ncyI6IjtRQUFBO1FBQ0E7O1FBRUE7UUFDQTs7UUFFQTtRQUNBO1FBQ0E7UUFDQTtRQUNBO1FBQ0E7UUFDQTtRQUNBO1FBQ0E7UUFDQTs7UUFFQTtRQUNBOztRQUVBO1FBQ0E7O1FBRUE7UUFDQTtRQUNBOzs7UUFHQTtRQUNBOztRQUVBO1FBQ0E7O1FBRUE7UUFDQTtRQUNBO1FBQ0EsMENBQTBDLGdDQUFnQztRQUMxRTtRQUNBOztRQUVBO1FBQ0E7UUFDQTtRQUNBLHdEQUF3RCxrQkFBa0I7UUFDMUU7UUFDQSxpREFBaUQsY0FBYztRQUMvRDs7UUFFQTtRQUNBO1FBQ0E7UUFDQTtRQUNBO1FBQ0E7UUFDQTtRQUNBO1FBQ0E7UUFDQTtRQUNBO1FBQ0EseUNBQXlDLGlDQUFpQztRQUMxRSxnSEFBZ0gsbUJBQW1CLEVBQUU7UUFD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RSxDQUEzQjtBQUNBVixVQUFVLENBQUNXLGFBQVgsR0FBMkI7QUFBTSxXQUFTLEVBQUM7QUFBaEIsR0FBMkM7QUFBTSxXQUFTLEVBQUM7QUFBaEIsRUFBM0MsRUFBOEU7QUFBTSxXQUFTLEVBQUM7QUFBaEIsRUFBOUUsQ0FBM0I7QUFFZVgseUVBQWYsRSIsImZpbGUiOiJibG9ja3MuYnVpbGQuanMiLCJzb3VyY2VzQ29udGVudCI6WyIgXHQvLyBUaGUgbW9kdWxlIGNhY2hlXG4gXHR2YXIgaW5zdGFsbGVkTW9kdWxlcyA9IHt9O1xuXG4gXHQvLyBUaGUgcmVxdWlyZSBmdW5jdGlvblxuIFx0ZnVuY3Rpb24gX193ZWJwYWNrX3JlcXVpcmVfXyhtb2R1bGVJZCkge1xuXG4gXHRcdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuIFx0XHRpZihpbnN0YWxsZWRNb2R1bGVzW21vZHVsZUlkXSkge1xuIFx0XHRcdHJldHVybiBpbnN0YWxsZWRNb2R1bGVzW21vZHVsZUlkXS5leHBvcnRzO1xuIFx0XHR9XG4gXHRcdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG4gXHRcdHZhciBtb2R1bGUgPSBpbnN0YWxsZWRNb2R1bGVzW21vZHVsZUlkXSA9IHtcbiBcdFx0XHRpOiBtb2R1bGVJZCxcbiBcdFx0XHRsOiBmYWxzZSxcbiBcdFx0XHRleHBvcnRzOiB7fVxuIFx0XHR9O1xuXG4gXHRcdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuIFx0XHRtb2R1bGVzW21vZHVsZUlkXS5jYWxsKG1vZHVsZS5leHBvcnRzLCBtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuIFx0XHQvLyBGbGFnIHRoZSBtb2R1bGUgYXMgbG9hZGVkXG4gXHRcdG1vZHVsZS5sID0gdHJ1ZTtcblxuIFx0XHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuIFx0XHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG4gXHR9XG5cblxuIFx0Ly8gZXhwb3NlIHRoZSBtb2R1bGVzIG9iamVjdCAoX193ZWJwYWNrX21vZHVsZXNfXylcbiBcdF9fd2VicGFja19yZXF1aXJlX18ubSA9IG1vZHVsZXM7XG5cbiBcdC8vIGV4cG9zZSB0aGUgbW9kdWxlIGNhY2hlXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLmMgPSBpbnN0YWxsZWRNb2R1bGVzO1xuXG4gXHQvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9uIGZvciBoYXJtb255IGV4cG9ydHNcbiBcdF9fd2VicGFja19yZXF1aXJlX18uZCA9IGZ1bmN0aW9uKGV4cG9ydHMsIG5hbWUsIGdldHRlcikge1xuIFx0XHRpZighX193ZWJwYWNrX3JlcXVpcmVfXy5vKGV4cG9ydHMsIG5hbWUpKSB7XG4gXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIG5hbWUsIHsgZW51bWVyYWJsZTogdHJ1ZSwgZ2V0OiBnZXR0ZXIgfSk7XG4gXHRcdH1cbiBcdH07XG5cbiBcdC8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbiBcdF9fd2VicGFja19yZXF1aXJlX18uciA9IGZ1bmN0aW9uKGV4cG9ydHMpIHtcbiBcdFx0aWYodHlwZW9mIFN5bWJvbCAhPT0gJ3VuZGVmaW5lZCcgJiYgU3ltYm9sLnRvU3RyaW5nVGFnKSB7XG4gXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFN5bWJvbC50b1N0cmluZ1RhZywgeyB2YWx1ZTogJ01vZHVsZScgfSk7XG4gXHRcdH1cbiBcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsICdfX2VzTW9kdWxlJywgeyB2YWx1ZTogdHJ1ZSB9KTtcbiBcdH07XG5cbiBcdC8vIGNyZWF0ZSBhIGZha2UgbmFtZXNwYWNlIG9iamVjdFxuIFx0Ly8gbW9kZSAmIDE6IHZhbHVlIGlzIGEgbW9kdWxlIGlkLCByZXF1aXJlIGl0XG4gXHQvLyBtb2RlICYgMjogbWVyZ2UgYWxsIHByb3BlcnRpZXMgb2YgdmFsdWUgaW50byB0aGUgbnNcbiBcdC8vIG1vZGUgJiA0OiByZXR1cm4gdmFsdWUgd2hlbiBhbHJlYWR5IG5zIG9iamVjdFxuIFx0Ly8gbW9kZSAmIDh8MTogYmVoYXZlIGxpa2UgcmVxdWlyZVxuIFx0X193ZWJwYWNrX3JlcXVpcmVfXy50ID0gZnVuY3Rpb24odmFsdWUsIG1vZGUpIHtcbiBcdFx0aWYobW9kZSAmIDEpIHZhbHVlID0gX193ZWJwYWNrX3JlcXVpcmVfXyh2YWx1ZSk7XG4gXHRcdGlmKG1vZGUgJiA4KSByZXR1cm4gdmFsdWU7XG4gXHRcdGlmKChtb2RlICYgNCkgJiYgdHlwZW9mIHZhbHVlID09PSAnb2JqZWN0JyAmJiB2YWx1ZSAmJiB2YWx1ZS5fX2VzTW9kdWxlKSByZXR1cm4gdmFsdWU7XG4gXHRcdHZhciBucyA9IE9iamVjdC5jcmVhdGUobnVsbCk7XG4gXHRcdF9fd2VicGFja19yZXF1aXJlX18ucihucyk7XG4gXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShucywgJ2RlZmF1bHQnLCB7IGVudW1lcmFibGU6IHRydWUsIHZhbHVlOiB2YWx1ZSB9KTtcbiBcdFx0aWYobW9kZSAmIDIgJiYgdHlwZW9mIHZhbHVlICE9ICdzdHJpbmcnKSBmb3IodmFyIGtleSBpbiB2YWx1ZSkgX193ZWJwYWNrX3JlcXVpcmVfXy5kKG5zLCBrZXksIGZ1bmN0aW9uKGtleSkgeyByZXR1cm4gdmFsdWVba2V5XTsgfS5iaW5kKG51bGwsIGtleSkpO1xuIFx0XHRyZXR1cm4gbnM7XG4gXHR9O1xuXG4gXHQvLyBnZXREZWZhdWx0RXhwb3J0IGZ1bmN0aW9uIGZvciBjb21wYXRpYmlsaXR5IHdpdGggbm9uLWhhcm1vbnkgbW9kdWxlc1xuIFx0X193ZWJwYWNrX3JlcXVpcmVfXy5uID0gZnVuY3Rpb24obW9kdWxlKSB7XG4gXHRcdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuIFx0XHRcdGZ1bmN0aW9uIGdldERlZmF1bHQoKSB7IHJldHVybiBtb2R1bGVbJ2RlZmF1bHQnXTsgfSA6XG4gXHRcdFx0ZnVuY3Rpb24gZ2V0TW9kdWxlRXhwb3J0cygpIHsgcmV0dXJuIG1vZHVsZTsgfTtcbiBcdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5kKGdldHRlciwgJ2EnLCBnZXR0ZXIpO1xuIFx0XHRyZXR1cm4gZ2V0dGVyO1xuIFx0fTtcblxuIFx0Ly8gT2JqZWN0LnByb3RvdHlwZS5oYXNPd25Qcm9wZXJ0eS5jYWxsXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSBmdW5jdGlvbihvYmplY3QsIHByb3BlcnR5KSB7IHJldHVybiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqZWN0LCBwcm9wZXJ0eSk7IH07XG5cbiBcdC8vIF9fd2VicGFja19wdWJsaWNfcGF0aF9fXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLnAgPSBcIlwiO1xuXG5cbiBcdC8vIExvYWQgZW50cnkgbW9kdWxlIGFuZCByZXR1cm4gZXhwb3J0c1xuIFx0cmV0dXJuIF9fd2VicGFja19yZXF1aXJlX18oX193ZWJwYWNrX3JlcXVpcmVfXy5zID0gXCIuL2Jsb2Nrcy9zcmMvYmxvY2tzLmpzXCIpO1xuIiwiY29uc3QgeyBJbnNwZWN0b3JDb250cm9scywgUmljaFRleHQsIENvbG9yUGFsZXR0ZSB9ID0gd3AuZWRpdG9yO1xyXG5jb25zdCB7IF9fIH0gPSB3cC5pMThuO1xyXG5jb25zdCB7IENvbXBvbmVudCwgRnJhZ21lbnQgfSA9IHdwLmVsZW1lbnQ7XHJcbmNvbnN0IHsgUGFuZWxCb2R5LCBUZXh0Q29udHJvbCwgVG9nZ2xlQ29udHJvbCB9ID0gd3AuY29tcG9uZW50cztcclxuY29uc3QgeyBDdGFNZWRpYSwgQ3RhTGF5b3V0U2VsZWN0b3IgfSA9IHdwLmN0YUNvbXBvbmVudHM7XHJcbmltcG9ydCBzdHlsZWljb25zIGZyb20gJy4vc3R5bGVpY29uJztcclxuXHJcbmNsYXNzIEVkaXQgZXh0ZW5kcyBDb21wb25lbnR7XHJcblx0Y29uc3RydWN0b3IocHJvcHMpIHtcclxuXHRcdHN1cGVyKCBwcm9wcyApO1xyXG5cdFx0dGhpcy50b2dnbGVUYXJnZXQgICAgID0gdGhpcy50b2dnbGVUYXJnZXQuYmluZCggdGhpcyApXHJcblx0fVxyXG5cclxuXHRjb21wb25lbnREaWRNb3VudCgpIHtcclxuICAgICAgICBjb25zdCB7IHNldEF0dHJpYnV0ZXMsIGNsaWVudElkLCBhdHRyaWJ1dGVzOiB7IHVuaXF1ZUlkIH0gfSA9IHRoaXMucHJvcHM7XHJcbiAgICAgICAgY29uc3QgX2NsaWVudCA9IGNsaWVudElkLnN1YnN0cigwLCA2KTtcclxuICAgICAgICBpZiAoIXVuaXF1ZUlkKSB7XHJcbiAgICAgICAgICAgIHNldEF0dHJpYnV0ZXMoeyB1bmlxdWVJZDogX2NsaWVudCB9KTtcclxuICAgICAgICB9IGVsc2UgaWYgKHVuaXF1ZUlkICYmIHVuaXF1ZUlkICE9IF9jbGllbnQpIHtcclxuICAgICAgICAgICAgc2V0QXR0cmlidXRlcyh7IHVuaXF1ZUlkOiBfY2xpZW50IH0pO1xyXG4gICAgICAgIH1cclxuXHR9XHJcblx0XHJcblx0dG9nZ2xlVGFyZ2V0KCkge1xyXG5cdFx0Y29uc3Qge3NldEF0dHJpYnV0ZXMsIGF0dHJpYnV0ZXM6IHsgYnRuX3RhcmdldCB9IH0gPSB0aGlzLnByb3BzO1xyXG5cdFx0c2V0QXR0cmlidXRlcyggeyBidG5fdGFyZ2V0OiAhIGJ0bl90YXJnZXQgfSApO1xyXG5cdH1cclxuXHJcblx0cmVuZGVyKCl7XHJcblx0XHRjb25zdCB7XHJcblx0XHRcdGF0dHJpYnV0ZXM6IHtcclxuXHRcdFx0XHR1bmlxdWVJZCxcclxuXHRcdFx0XHRsYXlvdXQsXHJcblx0XHRcdFx0aXNHcmFkaWVudEJnLFxyXG5cdFx0XHRcdGJnQ29sb3IsXHJcblx0XHRcdFx0YmdDb2xvcjIsXHJcblx0XHRcdFx0YmdJbWFnZSxcclxuXHRcdFx0XHR0aXRsZSxcclxuXHRcdFx0XHRkZXNjcmlwdGlvbixcclxuXHRcdFx0XHRidG5fbGFiZWwsXHJcblx0XHRcdFx0YnRuX3VybCxcclxuXHRcdFx0XHRidG5fdGFyZ2V0XHJcblx0XHRcdH0sXHJcblx0XHRcdHNldEF0dHJpYnV0ZXNcclxuXHRcdH0gPSB0aGlzLnByb3BzO1xyXG5cclxuXHRcdHJldHVybihcclxuXHRcdFx0PEZyYWdtZW50PlxyXG5cdFx0XHRcdDxJbnNwZWN0b3JDb250cm9scyBrZXk9XCJpbnNwZWN0b3JcIj5cclxuXHRcdFx0XHRcdDxQYW5lbEJvZHkgdGl0bGU9e19fKCdMYXlvdXQnLCAnY3RhLWd1dGVuYmVyZycpfSBpbml0aWFsT3Blbj17dHJ1ZX0+XHJcblx0XHRcdFx0XHRcdDxDdGFMYXlvdXRTZWxlY3RvciB2YWx1ZT17bGF5b3V0fSBvbkNoYW5nZT17dmFsID0+IHNldEF0dHJpYnV0ZXMoeyBsYXlvdXQ6IHZhbCB9KX1cclxuXHRcdFx0XHRcdFx0XHRvcHRpb25zPXtbXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiAxLCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF8xIH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiAyLCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF8yIH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiAzLCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF8zIH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiA0LCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF80IH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiA1LCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF81IH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiA2LCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF82IH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiA3LCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF83IH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiA4LCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF84IH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiA5LCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF85IH0sXHJcblx0XHRcdFx0XHRcdFx0XHR7IHZhbHVlOiAxMCwgc3R5bGVJY29uOiBzdHlsZWljb25zLmN0YV9sYXlvdXRfMTAgfSxcclxuXHRcdFx0XHRcdFx0XHRcdHsgdmFsdWU6IDExLCBzdHlsZUljb246IHN0eWxlaWNvbnMuY3RhX2xheW91dF8xMSB9XHJcblx0XHRcdFx0XHRcdFx0XX1cclxuXHRcdFx0XHRcdFx0Lz5cclxuXHRcdFx0XHRcdDwvUGFuZWxCb2R5PlxyXG5cdFx0XHRcdFx0PFBhbmVsQm9keSB0aXRsZT17IF9fKCAnQnV0dG9uJywgJ2N0YS1ndXRlbmJlcmcnICkgfSBpbml0aWFsT3Blbj17IGZhbHNlIH0+XHJcblx0XHRcdFx0XHRcdDxUZXh0Q29udHJvbFxyXG5cdFx0XHRcdFx0XHRcdGxhYmVsPSB7IF9fKCAnTGluaycsICdjdGEtZ3V0ZW5iZXJnJyApIH1cclxuXHRcdFx0XHRcdFx0XHR2YWx1ZT0geyBidG5fdXJsIH1cclxuXHRcdFx0XHRcdFx0XHRvbkNoYW5nZT17IHZhbHVlID0+IHNldEF0dHJpYnV0ZXMoIHsgYnRuX3VybDogdmFsdWUgfSApIH1cclxuXHRcdFx0XHRcdFx0Lz5cclxuXHRcdFx0XHRcdFx0PFRvZ2dsZUNvbnRyb2xcclxuXHRcdFx0XHRcdFx0XHRsYWJlbD17IF9fKCAnT3BlbiBpbiBuZXcgV2luZG93JywgJ2N0YS1ndXRlbmJlcmcnICkgfVxyXG5cdFx0XHRcdFx0XHRcdGNoZWNrZWQ9eyBidG5fdGFyZ2V0IH1cclxuXHRcdFx0XHRcdFx0XHRvbkNoYW5nZT17IHRoaXMudG9nZ2xlVGFyZ2V0IH1cclxuXHRcdFx0XHRcdFx0Lz5cclxuXHRcdFx0XHRcdDwvUGFuZWxCb2R5PlxyXG5cdFx0XHRcdFx0PFBhbmVsQm9keSB0aXRsZT17IF9fKCAnV3JhcHBlcicsICdjdGEtZ3V0ZW5iZXJnJyApIH0gaW5pdGlhbE9wZW49eyBmYWxzZSB9PlxyXG5cdFx0XHRcdFx0XHR7KGxheW91dCA9PSA4IHx8IGxheW91dCA9PSA5KSAmJlxyXG5cdFx0XHRcdFx0XHRcdDxUb2dnbGVDb250cm9sXHJcblx0XHRcdFx0XHRcdFx0XHRsYWJlbD17X18oJ0VuYWJsZSBHcmFkaWVudCcsICdjdGEtZ3V0ZW5iZXJnJyl9XHJcblx0XHRcdFx0XHRcdFx0XHRjaGVja2VkPXsgaXNHcmFkaWVudEJnIH1cclxuXHRcdFx0XHRcdFx0XHRcdG9uQ2hhbmdlPXsgKHN0YXRlKSA9PiBzZXRBdHRyaWJ1dGVzKCB7IGlzR3JhZGllbnRCZzogc3RhdGUgfSApIH1cclxuXHRcdFx0XHRcdFx0XHQvPlxyXG5cdFx0XHRcdFx0XHR9XHJcblx0XHRcdFx0XHRcdDxzcGFuIGNsYXNzTmFtZT1cImN0YS1maWVsZC1sYWJlbFwiPntfXygnQmFja2dyb3VuZCBDb2xvcicsICdjdGEtZ3V0ZW5iZXJnJyl9PC9zcGFuPlxyXG5cdFx0XHRcdFx0XHQ8Q29sb3JQYWxldHRlXHJcblx0XHRcdFx0XHRcdFx0bGFiZWw9eyBfXygnQmFja2dyb3VuZCBDb2xvcicsICdjdGEtZ3V0ZW5iZXJnJykgfVxyXG5cdFx0XHRcdFx0XHRcdGNsYXNzTmFtZT1cImN0YS1maWVsZFwiXHJcblx0XHRcdFx0XHRcdFx0dmFsdWU9eyBiZ0NvbG9yIH1cclxuXHRcdFx0XHRcdFx0XHRvbkNoYW5nZT17ICggY29sb3JWYWx1ZSApID0+IHNldEF0dHJpYnV0ZXMoIHsgYmdDb2xvcjogY29sb3JWYWx1ZSB9ICkgfVxyXG5cdFx0XHRcdFx0XHRcdGFsbG93UmVzZXRcclxuXHRcdFx0XHRcdFx0Lz5cclxuXHRcdFx0XHRcdFx0eyhpc0dyYWRpZW50QmcgPT0gMSAmJiAobGF5b3V0ID09IDggfHwgbGF5b3V0ID09IDkpKSAmJlxyXG5cdFx0XHRcdFx0XHRcdDxGcmFnbWVudD5cclxuXHRcdFx0XHRcdFx0XHRcdDxzcGFuIGNsYXNzTmFtZT1cImN0YS1maWVsZC1sYWJlbFwiPntfXygnQmFja2dyb3VuZCBDb2xvciAyJywgJ2N0YS1ndXRlbmJlcmcnKX08L3NwYW4+XHJcblx0XHRcdFx0XHRcdFx0XHQ8Q29sb3JQYWxldHRlXHJcblx0XHRcdFx0XHRcdFx0XHRcdGxhYmVsPXsgX18oJ0JhY2tncm91bmQgQ29sb3IgMicsICdjdGEtZ3V0ZW5iZXJnJykgfVxyXG5cdFx0XHRcdFx0XHRcdFx0XHRjbGFzc05hbWU9XCJjdGEtZmllbGRcIlxyXG5cdFx0XHRcdFx0XHRcdFx0XHR2YWx1ZT17IGJnQ29sb3IyIH1cclxuXHRcdFx0XHRcdFx0XHRcdFx0b25DaGFuZ2U9eyAoIGNvbG9yVmFsdWUgKSA9PiBzZXRBdHRyaWJ1dGVzKCB7IGJnQ29sb3IyOiBjb2xvclZhbHVlIH0gKSB9XHJcblx0XHRcdFx0XHRcdFx0XHRcdGFsbG93UmVzZXRcclxuXHRcdFx0XHRcdFx0XHRcdC8+XHJcblx0XHRcdFx0XHRcdFx0PC9GcmFnbWVudD5cclxuXHRcdFx0XHRcdFx0fVxyXG5cdFx0XHRcdFx0XHQ8Q3RhTWVkaWEgXHJcblx0XHRcdFx0XHRcdFx0bGFiZWw9e19fKCdJbWFnZScsICdjdGEtZ3V0ZW5iZXJnJyl9IFxyXG5cdFx0XHRcdFx0XHRcdHZhbHVlPXtiZ0ltYWdlfSBcclxuXHRcdFx0XHRcdFx0XHRvbkNoYW5nZT17dmFsID0+IHNldEF0dHJpYnV0ZXMoeyBiZ0ltYWdlOiB2YWwgfSl9IFxyXG5cdFx0XHRcdFx0XHQvPlxyXG5cdFx0XHRcdFx0PC9QYW5lbEJvZHk+XHJcblx0XHRcdFx0PC9JbnNwZWN0b3JDb250cm9scz5cclxuXHRcdFx0XHQ8ZGl2IFxyXG5cdFx0XHRcdFx0Y2xhc3NOYW1lPXtgY2FsbF90b19hY3Rpb25fJHtsYXlvdXR9IGNhbGxfdG9fYWN0aW9uXyR7dW5pcXVlSWR9YH1cclxuXHRcdFx0XHRcdHN0eWxlPXt7XHJcblx0XHRcdFx0XHRcdGJhY2tncm91bmRJbWFnZTpgJHsoYmdJbWFnZS51cmwgIT0gdW5kZWZpbmVkKSA/IGB1cmwoJHtiZ0ltYWdlLnVybH0pYCA6ICdub25lJ31gXHJcblx0XHRcdFx0XHR9fVxyXG5cdFx0XHRcdD5cclxuXHRcdFx0XHRcdDxkaXYgY2xhc3NOYW1lPVwiY3RhX2NvbnRlbnRcIj5cclxuXHRcdFx0XHRcdFx0PFJpY2hUZXh0XHJcblx0XHRcdFx0XHRcdFx0dGFnTmFtZT1cImgyXCJcclxuXHRcdFx0XHRcdFx0XHR2YWx1ZT17dGl0bGV9XHJcblx0XHRcdFx0XHRcdFx0cGxhY2Vob2xkZXI9XCJDYWxsIHRvIGFjdGlvbiB0aXRsZVwiXHJcblx0XHRcdFx0XHRcdFx0b25DaGFuZ2U9eyh2YWx1ZSkgPT4gc2V0QXR0cmlidXRlcyh7dGl0bGU6IHZhbHVlfSl9XHJcblx0XHRcdFx0XHRcdC8+XHJcblx0XHRcdFx0XHRcdDxSaWNoVGV4dFxyXG5cdFx0XHRcdFx0XHRcdHRhZ05hbWU9XCJwXCJcclxuXHRcdFx0XHRcdFx0XHR2YWx1ZT17ZGVzY3JpcHRpb259XHJcblx0XHRcdFx0XHRcdFx0cGxhY2Vob2xkZXI9XCJDYWxsIHRvIGFjdGlvbiBkZXNjcmlwdGlvblwiXHJcblx0XHRcdFx0XHRcdFx0b25DaGFuZ2U9eyh2YWx1ZSkgPT4gc2V0QXR0cmlidXRlcyh7ZGVzY3JpcHRpb246IHZhbHVlfSl9XHJcblx0XHRcdFx0XHRcdC8+XHJcblx0XHRcdFx0XHRcdDxSaWNoVGV4dFxyXG5cdFx0XHRcdFx0XHRcdHRhZ05hbWU9XCJhXCJcclxuXHRcdFx0XHRcdFx0XHRjbGFzc05hbWU9XCJjdGFnYi1idG5cIlxyXG5cdFx0XHRcdFx0XHRcdHZhbHVlPXtidG5fbGFiZWx9XHJcblx0XHRcdFx0XHRcdFx0cGxhY2Vob2xkZXI9XCJCdXR0b24gTGFiZWxcIlxyXG5cdFx0XHRcdFx0XHRcdG9uQ2hhbmdlPXsodmFsdWUpID0+IHNldEF0dHJpYnV0ZXMoe2J0bl9sYWJlbDogdmFsdWV9KX1cclxuXHRcdFx0XHRcdFx0Lz5cclxuXHRcdFx0XHRcdDwvZGl2PlxyXG5cdFx0XHRcdDwvZGl2PlxyXG5cdFx0XHRcdDxzdHlsZT5cclxuXHRcdFx0XHRcdHsobGF5b3V0ID09IDEgfHwgbGF5b3V0ID09IDggfHwgbGF5b3V0ID09IDkpID9cclxuXHRcdFx0XHRcdFx0XHJcblx0XHRcdFx0XHRcdGBcclxuXHRcdFx0XHRcdFx0LmNhbGxfdG9fYWN0aW9uXyR7dW5pcXVlSWR9OmFmdGVye1xyXG5cdFx0XHRcdFx0XHRcdCR7aXNHcmFkaWVudEJnID09IDEgPyBgYmFja2dyb3VuZC1pbWFnZTogbGluZWFyLWdyYWRpZW50KHRvIHJpZ2h0LCAke2JnQ29sb3J9LCAke2JnQ29sb3IyfSlgIDogYGJhY2tncm91bmQtY29sb3I6ICR7YmdDb2xvcn1gfVxyXG5cdFx0XHRcdFx0XHR9XHJcblx0XHRcdFx0XHRcdC5jYWxsX3RvX2FjdGlvbl8ke3VuaXF1ZUlkfT4uY3RhX2NvbnRlbnQ+LmN0YWdiLWJ0bjpob3ZlcntcclxuXHRcdFx0XHRcdFx0XHQke2lzR3JhZGllbnRCZyA9PSAxID8gYGJhY2tncm91bmQtaW1hZ2U6IGxpbmVhci1ncmFkaWVudCh0byByaWdodCwgJHtiZ0NvbG9yMn0sICR7YmdDb2xvcn0pYCA6IGBiYWNrZ3JvdW5kLWNvbG9yOiAke2JnQ29sb3J9YH1cclxuXHRcdFx0XHRcdFx0fVxyXG5cdFx0XHRcdFx0XHRgXHJcblx0XHRcdFx0XHRcdDpcclxuXHRcdFx0XHRcdFx0XHJcblx0XHRcdFx0XHRcdGAuY2FsbF90b19hY3Rpb25fJHt1bmlxdWVJZH17XHJcblx0XHRcdFx0XHRcdFx0JHtpc0dyYWRpZW50QmcgPT0gMSA/IGBiYWNrZ3JvdW5kLWltYWdlOiBsaW5lYXItZ3JhZGllbnQodG8gcmlnaHQsICR7YmdDb2xvcn0sICR7YmdDb2xvcjJ9KWAgOiBgYmFja2dyb3VuZC1jb2xvcjogJHtiZ0NvbG9yfWB9XHJcblx0XHRcdFx0XHRcdH1cclxuXHRcdFx0XHRcdFx0YFxyXG5cdFx0XHRcdFx0XHRcclxuXHRcdFx0XHRcdH1cclxuXHRcdFx0XHQ8L3N0eWxlPlxyXG5cdFx0XHQ8L0ZyYWdtZW50PlxyXG5cdFx0KTtcclxuXHR9XHJcbn1cclxuXHJcbmV4cG9ydCBkZWZhdWx0IEVkaXQ7IiwiY29uc3QgYXR0cmlidXRlcyA9IHtcclxuXHQvL2Jhc2ljXHJcblx0dW5pcXVlSWQ6IHsgdHlwZTogJ3N0cmluZycsIGRlZmF1bHQ6ICcnIH0sXHJcblx0bGF5b3V0OiB7IHR5cGU6ICdudW1iZXInLCBkZWZhdWx0OiAxIH0sXHJcblx0aXNHcmFkaWVudEJnOiB7IHR5cGU6ICdib29sZWFuJywgZGVmYXVsdDogMCB9LFxyXG5cdGJnQ29sb3I6IHsgdHlwZTogJ3N0cmluZycsIGRlZmF1bHQ6ICcjNzg0MEZGJyB9LFxyXG5cdGJnQ29sb3IyOiB7IHR5cGU6ICdzdHJpbmcnLCBkZWZhdWx0OiAnIzc4NDBGRicgfSxcclxuXHRiZ0ltYWdlOiB7IHR5cGU6ICdvYmplY3QnLCBkZWZhdWx0OiB7dXJsOiBjdGFfZ3V0ZW5iZXJnX2xvY2F0ZS5wbHVnaW4gKyAnYXNzZXRzL2ltYWdlcy9jdGFfMS5wbmcnLCBhbHQ6ICdDYWxsIHRvIGFjdGlvbiBJbWFnZScsIGlkOiAwfSB9LFxyXG5cclxuXHQvL0NvbnRlbnRcclxuXHR0aXRsZTogeyB0eXBlOiAnc3RyaW5nJywgZGVmYXVsdDogJ0ZsZXhpIEFkZG9ucyBGb3IgRWxlbWVudG9yJyB9LFxyXG5cdGRlc2NyaXB0aW9uOiB7IHR5cGU6ICdzdHJpbmcnLCBkZWZhdWx0OiAnRXRpYW0gY29udmFsbGlzIGVsZW1lbnR1bSBzYXBpZW4sIGEgYWxpcXVhbSB0dXJwaXMgYWxpcXVhbSB2aXRhZS4gUHJhZXNlbnQgc29sbGljaXR1ZGluIGZlbGlzIHZlbCBtaSBmYWNpbGlzaXMgcG9zdWVyZSBOdWxsYSB1bHRyaWNlcy4nIH0sXHJcblx0YnRuX2xhYmVsOiB7IHR5cGU6ICdzdHJpbmcnLCBkZWZhdWx0OiAnRnJlZSB0cmlhbCcgfSxcclxuXHRidG5fdXJsOiB7IHR5cGU6ICdzdHJpbmcnLCBkZWZhdWx0OiAnIycgfSxcclxuXHRidG5fdGFyZ2V0OiB7IHR5cGU6ICdib29sZWFuJywgZGVmYXVsdDogMSB9XHJcbn1cclxuZXhwb3J0IGRlZmF1bHQgYXR0cmlidXRlczsiLCJleHBvcnQgY29uc3QgQ2xpY2tJY29uID0gKCkgPT4ge1xyXG5cdHJldHVybiAoXHJcbiAgICAgICAgPHN2ZyBjbGFzc05hbWU9XCJkYXNoaWNvblwiIHhtbG5zPVwiaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmdcIiB4bWxuc1hsaW5rPVwiaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGlua1wiIHZlcnNpb249XCIxLjFcIiB3aWR0aD1cIjI0XCIgaGVpZ2h0PVwiMjRcIiB2aWV3Qm94PVwiMCAwIDUxMiA1MTJcIj5cclxuICAgICAgICA8cGF0aCBkPVwiTTUxMiwxODMuNzc4VjUwLjIxM2MwLTI3LjYxOC0yMi40NjktNTAuMDg3LTUwLjA4Ny01MC4wODdINTAuMDg3QzIyLjQ2OSwwLjEyNiwwLDIyLjU5NSwwLDUwLjIxM3YxMzMuNTY1IGMwLDI3LjYxOCwyMi40NjksNTAuMDg3LDUwLjA4Nyw1MC4wODdoMTM0LjlsODAuNjI4LDI0MS44ODNjNS4wNTQsMTUuMTYxLDI2LjYxMywxNS4xOTUsMzEuNjc4LDBsMjYuODc0LTgwLjYyMkw0MzEuMTUsNTAyLjExIGMxMy4wMTksMTMuMDE4LDM0LjIwMywxMy4wMTgsNDcuMjIzLDBsMjMuNjEyLTIzLjYxMWMxMy4wMTctMTMuMDE5LDEzLjAxNy0zNC4yMDMtMC4wMDEtNDcuMjIyTDM5NS4wMDEsMzI0LjI5M2w4MC42MjItMjYuODc0IGMxNS4xNjktNS4wNTgsMTUuMTg2LTI2LjYxNSwwLTMxLjY3OEwzODAsMjMzLjg2N2g4MS45MTNDNDg5LjUzMSwyMzMuODY1LDUxMiwyMTEuMzk2LDUxMiwxODMuNzc4eiBNNDE3LjU0NiwyODEuNTc5IGwtNTguNzMzLDE5LjU3N2MtMTEuNzcsMy45MjMtMTUuMjg0LDE4Ljg4Ni02LjUyNiwyNy42NDVsMTI2LjA4NCwxMjYuMDg2bC0yMy42MTIsMjMuNjExTDMyOC42NzUsMzUyLjQxMiBjLTguNzc3LTguNzc5LTIzLjcyNC01LjIzLTI3LjY0NSw2LjUyNmwtMTkuNTc3LDU4LjczM2wtNjguMDQ3LTIwNC4xMzlDMjE3LjUwOCwyMTQuOSw0MDIuMzA2LDI3Ni40OTksNDE3LjU0NiwyODEuNTc5eiBNMjc5LjgyNSwyMDAuNDc1di0wLjAwMWwtODcuNTM2LTI5LjE3OGMtMTMuMDE2LTQuMzQzLTI1LjQ2NSw4LjA4MS0yMS4xMTksMjEuMTE5bDIuNjg3LDguMDYxSDUwLjA4NyBjLTkuMjA2LDAtMTYuNjk2LTcuNDktMTYuNjk2LTE2LjY5NlY1MC4yMTRjMC05LjIwNiw3LjQ5LTE2LjY5NiwxNi42OTYtMTYuNjk2aDQxMS44MjZjOS4yMDYsMCwxNi42OTYsNy40OSwxNi42OTYsMTYuNjk2VjE4My43OCBjMCw5LjIwNi03LjQ5LDE2LjY5Ni0xNi42OTYsMTYuNjk2SDI3OS44MjV6XCI+PC9wYXRoPlxyXG5cdFx0XHRcdDwvc3ZnPlxyXG5cdClcclxufSIsImNvbnN0IHsgUmljaFRleHQsIE1lZGlhVXBsb2FkLCBQbGFpblRleHQgfSA9IHdwLmVkaXRvcjtcclxuY29uc3QgeyByZWdpc3RlckJsb2NrVHlwZSB9ID0gd3AuYmxvY2tzO1xyXG5jb25zdCB7IF9fIH0gPSB3cC5pMThuO1xyXG5jb25zdCB7IENvbXBvbmVudCwgRnJhZ21lbnQgfSA9IHdwLmVsZW1lbnQ7XHJcbmNvbnN0IHsgQnV0dG9uIH0gPSB3cC5jb21wb25lbnRzO1xyXG5pbXBvcnQgeyBDbGlja0ljb24gfSBmcm9tICcuL2Jsb2NraWNvbic7XHJcbmltcG9ydCAnLi9jdGEtY29tcG9uZW50JztcclxuXHJcbmltcG9ydCBhdHRyaWJ1dGVzIGZyb20gJy4vYXR0cmlidXRlcyc7XHJcbmltcG9ydCBFZGl0IGZyb20gJy4vRWRpdCc7XHJcblxyXG5pbXBvcnQgJy4vc3R5bGUuc2Nzcyc7XHJcbmltcG9ydCAnLi9lZGl0b3Iuc2Nzcyc7XHJcblxyXG5yZWdpc3RlckJsb2NrVHlwZSgnY3RhLWd1dGVuYmVyZy9jdGEnLCB7XHJcbiAgdGl0bGU6IF9fKCdDYWxsIHRvIGFjdGlvbicsICdjdGEtZ3V0ZW5iZXJnJyksXHJcbiAgaWNvbjogQ2xpY2tJY29uLFxyXG4gIGNhdGVnb3J5OiAnY29tbW9uJyxcclxuICBrZXl3b3JkczogW1xyXG5cdFx0X18oICdjYWxsIHRvIGFjdGlvbicsICdjdGEtZ3V0ZW5iZXJnJyApLFxyXG5cdFx0X18oICd3cHBvb2wnLCAnY3RhLWd1dGVuYmVyZycgKVxyXG5cdF0sXHJcbiAgYXR0cmlidXRlcyxcclxuICBzdXBwb3J0czoge1xyXG4gICAgYWxpZ246IHRydWVcclxuICB9LFxyXG4gIGVkaXQ6IEVkaXQsXHJcbiAgc2F2ZTogZnVuY3Rpb24oIHByb3BzICkge1xyXG5cclxuXHRcdGNvbnN0IHtcclxuXHRcdFx0dW5pcXVlSWQsXHJcblx0XHRcdGxheW91dCxcclxuXHRcdFx0aXNHcmFkaWVudEJnLFxyXG5cdFx0XHRiZ0NvbG9yLFxyXG5cdFx0XHRiZ0NvbG9yMixcclxuXHRcdFx0YmdJbWFnZSxcclxuXHRcdFx0dGl0bGUsXHJcblx0XHRcdGRlc2NyaXB0aW9uLFxyXG5cdFx0XHRidG5fbGFiZWwsXHJcblx0XHRcdGJ0bl91cmwsXHJcblx0XHRcdGJ0bl90YXJnZXRcclxuXHRcdH0gPSBwcm9wcy5hdHRyaWJ1dGVzO1xyXG5cclxuXHRcdHJldHVybiAoXHJcblx0XHRcdFx0PGRpdiBcclxuXHRcdFx0XHRcdGNsYXNzTmFtZT17YGNhbGxfdG9fYWN0aW9uXyR7bGF5b3V0fSBjYWxsX3RvX2FjdGlvbl8ke3VuaXF1ZUlkfWB9XHJcblx0XHRcdFx0XHRzdHlsZT17e1xyXG5cdFx0XHRcdFx0XHRiYWNrZ3JvdW5kSW1hZ2U6YCR7KGJnSW1hZ2UudXJsICE9IHVuZGVmaW5lZCkgPyBgdXJsKCR7YmdJbWFnZS51cmx9KWAgOiAnbm9uZSd9YFxyXG5cdFx0XHRcdFx0fX1cclxuXHRcdFx0XHQ+XHJcblx0XHRcdFx0XHQ8ZGl2IGNsYXNzTmFtZT1cImN0YV9jb250ZW50XCI+XHJcblx0XHRcdFx0XHRcdDxoMj57dGl0bGV9PC9oMj5cclxuXHRcdFx0XHRcdFx0PHA+e2Rlc2NyaXB0aW9ufTwvcD5cclxuXHRcdFx0XHRcdFx0PGEgY2xhc3NOYW1lPVwiY3RhZ2ItYnRuXCIgdGFyZ2V0PXtidG5fdGFyZ2V0ID8gJ19ibGFuayc6ICcnfSByZWw9XCJub29wZW5lciBub3JlZmVycmVyXCIgaHJlZj17YnRuX3VybH0+e2J0bl9sYWJlbH08L2E+XHJcblx0XHRcdFx0XHQ8L2Rpdj5cclxuXHRcdFx0XHRcdDxzdHlsZT5cclxuXHRcdFx0XHRcdHsobGF5b3V0ID09IDEgfHwgbGF5b3V0ID09IDggfHwgbGF5b3V0ID09IDkpID9cclxuXHRcdFx0XHRcdFx0XHJcblx0XHRcdFx0XHRcdGBcclxuXHRcdFx0XHRcdFx0LmNhbGxfdG9fYWN0aW9uXyR7dW5pcXVlSWR9OmFmdGVye1xyXG5cdFx0XHRcdFx0XHRcdCR7aXNHcmFkaWVudEJnID09IDEgPyBgYmFja2dyb3VuZC1pbWFnZTogbGluZWFyLWdyYWRpZW50KHRvIHJpZ2h0LCAke2JnQ29sb3J9LCAke2JnQ29sb3IyfSlgIDogYGJhY2tncm91bmQtY29sb3I6ICR7YmdDb2xvcn1gfVxyXG5cdFx0XHRcdFx0XHR9XHJcblx0XHRcdFx0XHRcdC5jYWxsX3RvX2FjdGlvbl8ke3VuaXF1ZUlkfT4uY3RhX2NvbnRlbnQ+LmN0YWdiLWJ0bjpob3ZlcntcclxuXHRcdFx0XHRcdFx0XHQke2lzR3JhZGllbnRCZyA9PSAxID8gYGJhY2tncm91bmQtaW1hZ2U6IGxpbmVhci1ncmFkaWVudCh0byByaWdodCwgJHtiZ0NvbG9yMn0sICR7YmdDb2xvcn0pYCA6IGBiYWNrZ3JvdW5kLWNvbG9yOiAke2JnQ29sb3J9YH1cclxuXHRcdFx0XHRcdFx0fVxyXG5cdFx0XHRcdFx0XHRgXHJcblx0XHRcdFx0XHRcdDpcclxuXHRcdFx0XHRcdFx0XHJcblx0XHRcdFx0XHRcdGAuY2FsbF90b19hY3Rpb25fJHt1bmlxdWVJZH17XHJcblx0XHRcdFx0XHRcdFx0JHtpc0dyYWRpZW50QmcgPT0gMSA/IGBiYWNrZ3JvdW5kLWltYWdlOiBsaW5lYXItZ3JhZGllbnQodG8gcmlnaHQsICR7YmdDb2xvcn0sICR7YmdDb2xvcjJ9KWAgOiBgYmFja2dyb3VuZC1jb2xvcjogJHtiZ0NvbG9yfWB9XHJcblx0XHRcdFx0XHRcdH1cclxuXHRcdFx0XHRcdFx0YFxyXG5cdFx0XHRcdFx0XHRcclxuXHRcdFx0XHRcdH1cclxuXHRcdFx0XHRcdDwvc3R5bGU+XHJcblx0XHRcdFx0PC9kaXY+XHJcblx0XHQpO1xyXG5cdH1cclxufSk7XHJcbiIsImNvbnN0IHsgQ29tcG9uZW50IH0gPSB3cC5lbGVtZW50O1xyXG5jb25zdCB7IF9fIH0gPSB3cC5pMThuO1xyXG5jb25zdCB7IE1lZGlhVXBsb2FkIH0gPSB3cC5ibG9ja0VkaXRvcjtcclxuY29uc3QgeyBEYXNoaWNvbiB9ID0gd3AuY29tcG9uZW50cztcclxuXHJcbmNsYXNzIEN0YU1lZGlhIGV4dGVuZHMgQ29tcG9uZW50IHtcclxuXHJcbiAgICBzZXRTZXR0aW5ncyhtZWRpYSkge1xyXG5cdFx0Y29uc3QgeyBvbkNoYW5nZSB9ID0gdGhpcy5wcm9wc1xyXG5cdFx0aWYgKG1lZGlhICYmIG1lZGlhLnVybCkge1xyXG4gICAgICAgICAgICBvbkNoYW5nZSh7IHVybDogbWVkaWEudXJsLCBpZDogbWVkaWEuaWQsIGFsdDogbWVkaWEuYWx0IH0pO1xyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICByZW1vdmVJbWFnZSgpIHtcclxuICAgICAgICBjb25zdCB7IG9uQ2hhbmdlIH0gPSB0aGlzLnByb3BzXHJcblx0XHRvbkNoYW5nZSh7fSlcclxuXHR9XHJcbiAgICBcclxuICAgIHZhbGlkYXRlVXJsKHVybCkge1xyXG5cdFx0aWYgKFsnd2JtJywgJ2pwZycsICdqcGVnJywgJ2dpZicsICdwbmcnLCAnc3ZnJ10uaW5kZXhPZih1cmwuc3BsaXQoJy4nKS5wb3AoKS50b0xvd2VyQ2FzZSgpKSAhPSAtMSkge1xyXG5cdFx0XHRyZXR1cm4gdXJsO1xyXG5cdFx0fSBlbHNlIHtcclxuXHRcdFx0cmV0dXJuIGN0YV9ndXRlbmJlcmdfbG9jYXRlLnBsdWdpbiArICdhc3NldHMvaW1hZ2VzL2N0YV8xLnBuZyc7XHJcblx0XHR9XHJcblx0fVxyXG5cclxuICAgIHJlbmRlcigpIHtcclxuICAgICAgICBjb25zdCB7IHZhbHVlLCBsYWJlbCwgY2xhc3NOYW1lIH0gPSB0aGlzLnByb3BzO1xyXG4gICAgICAgIHJldHVybiAoXHJcbiAgICAgICAgICAgIDxkaXYgY2xhc3NOYW1lPXtgY3RhLWZpZWxkIGN0YS1maWVsZC1tZWRpYS1zZWxlY3RvciAke2NsYXNzTmFtZT9jbGFzc05hbWU6Jyd9YH0+XHJcbiAgICAgICAgICAgICAgICB7IGxhYmVsICYmIFxyXG4gICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzTmFtZT1cImN0YS1maWVsZC1sYWJlbFwiPntsYWJlbH08L3NwYW4+XHJcbiAgICAgICAgICAgICAgICB9XHJcbiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzTmFtZT1cImN0YS1maWVsZC1jb250ZW50IGN0YS1maWVsZC1tZWRpYVwiPlxyXG4gICAgICAgICAgICAgICAgICAgIDxNZWRpYVVwbG9hZFxyXG4gICAgICAgICAgICAgICAgICAgICAgICBvblNlbGVjdD17dmFsID0+IHRoaXMuc2V0U2V0dGluZ3ModmFsKX1cclxuICAgICAgICAgICAgICAgICAgICAgICAgYWxsb3dlZFR5cGVzPXtbJ2ltYWdlJ119XHJcbiAgICAgICAgICAgICAgICAgICAgICAgIHZhbHVlPXt2YWx1ZX1cclxuICAgICAgICAgICAgICAgICAgICAgICAgcmVuZGVyPXsoeyBvcGVuIH0pID0+IChcclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXY+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeyh2YWx1ZSAmJiB2YWx1ZS51cmwpID8gXHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXY+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzTmFtZT1cImN0YS1zaW5nbGUtaW1nXCI+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3NOYW1lPVwiY3RhLW1lZGlhLWltYWdlLXBhcmVudFwiIG9uQ2xpY2s9e29wZW59PlxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aW1nIHNyYz17dGhpcy52YWxpZGF0ZVVybCh2YWx1ZS51cmwpfSBhbHQ9e3ZhbHVlLmFsdH0gLz5cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L3NwYW4+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj5cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3NOYW1lPVwiY3RhLW1lZGlhLWFjdGlvbnMgY3RhLWZpZWxkLWJ1dHRvbi1saXN0XCI+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGJ1dHRvbiBjbGFzc05hbWU9XCJjdGEtZmllbGQtYnV0dG9uXCIgYXJpYS1sYWJlbD17X18oJ0VkaXQnLCAnY3RhLWd1dGVuYmVyZycpfSBvbkNsaWNrPXtvcGVufSByb2xlPVwiYnV0dG9uXCI+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGFyaWEtbGFiZWw9e19fKCdFZGl0JywgJ2N0YS1ndXRlbmJlcmcnKX0gY2xhc3NOYW1lPVwiZGFzaGljb25zIGRhc2hpY29ucy1lZGl0XCIgLz5cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2J1dHRvbj5cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YnV0dG9uIGNsYXNzTmFtZT1cImN0YS1maWVsZC1idXR0b25cIiBhcmlhLWxhYmVsPXtfXygnUmVtb3ZlJywgJ2N0YS1ndXRlbmJlcmcnKX0gb25DbGljaz17KCkgPT4gdGhpcy5yZW1vdmVJbWFnZSgpfSByb2xlPVwiYnV0dG9uXCI+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGFyaWEtbGFiZWw9e19fKCdDbG9zZScsICdjdGEtZ3V0ZW5iZXJnJyl9IGNsYXNzTmFtZT1cImRhc2hpY29ucyBkYXNoaWNvbnMtbm9cIiAvPlxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvYnV0dG9uPlxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PlxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3NOYW1lPVwiY3RhLXNpbmdsZS1pbWdcIj48ZGl2IG9uQ2xpY2s9e29wZW59IGNsYXNzTmFtZT17XCJjdGEtcGxhY2Vob2xkZXItaW1hZ2VcIn0+PERhc2hpY29uIGljb249XCJmb3JtYXQtaW1hZ2VcIiAvPjwvZGl2PjwvZGl2PlxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PlxyXG4gICAgICAgICAgICAgICAgICAgICAgICApfVxyXG4gICAgICAgICAgICAgICAgICAgIC8+XHJcbiAgICAgICAgICAgICAgICA8L2Rpdj5cclxuICAgICAgICAgICAgPC9kaXY+XHJcbiAgICAgICAgKTtcclxuICAgIH1cclxufVxyXG5cclxuY2xhc3MgQ3RhTGF5b3V0U2VsZWN0b3IgZXh0ZW5kcyBDb21wb25lbnQge1xyXG5cclxuICAgIHJlbmRlcigpIHtcclxuICAgICAgICBjb25zdCB7IHZhbHVlLCBsYWJlbCwgb3B0aW9ucywgY29sdW1ucyA9IDIsIGNsYXNzTmFtZSwgb25DaGFuZ2UgfSA9IHRoaXMucHJvcHM7XHJcbiAgICAgICAgcmV0dXJuIChcclxuICAgICAgICAgICAgPGRpdiBjbGFzc05hbWU9e2BjdGEtZmllbGQgY3RhLWZpZWxkLWxheW91dCAke2NsYXNzTmFtZT9jbGFzc05hbWU6Jyd9YH0+XHJcbiAgICAgICAgICAgICAgICB7IGxhYmVsICYmIFxyXG4gICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzTmFtZT1cImN0YS1maWVsZC1sYWJlbFwiPntsYWJlbH08L3NwYW4+XHJcbiAgICAgICAgICAgICAgICB9XHJcbiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzTmFtZT1cImN0YS1maWVsZC1jb250ZW50IGN0YS1maWVsZC1sYXlvdXQtbGlzdFwiPlxyXG4gICAgICAgICAgICAgICAgICAgIHtcclxuICAgICAgICAgICAgICAgICAgICAgICAgb3B0aW9ucy5tYXAoKGRhdGEsIGluZGV4KSA9PiB7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gKFxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXZcclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAga2V5PXtpbmRleH1cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb25DbGljaz17KCkgPT4gb25DaGFuZ2UoZGF0YS52YWx1ZSl9XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsYXNzTmFtZT17YCR7dmFsdWUgPT0gZGF0YS52YWx1ZSA/ICdhY3RpdmUnIDogJyd9YH1cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA+XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHtkYXRhLnN0eWxlSWNvbiAmJiA8c3BhbiBjbGFzc05hbWU9e2BjdGEtbGF5b3V0LXN0eWxlIGN0YS1sYXlvdXQtc3R5bGUtJHtkYXRhLnZhbHVlfWB9PntkYXRhLnN0eWxlSWNvbn08L3NwYW4+fVxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PlxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgKVxyXG4gICAgICAgICAgICAgICAgICAgICAgICB9KVxyXG4gICAgICAgICAgICAgICAgICAgIH1cclxuICAgICAgICAgICAgICAgIDwvZGl2PlxyXG4gICAgICAgICAgICA8L2Rpdj5cclxuICAgICAgICApO1xyXG4gICAgfVxyXG59XHJcblxyXG53cC5jdGFDb21wb25lbnRzID0ge1xyXG4gICAgQ3RhTWVkaWEsXHJcbiAgICBDdGFMYXlvdXRTZWxlY3RvclxyXG59IiwiLy8gcmVtb3ZlZCBieSBleHRyYWN0LXRleHQtd2VicGFjay1wbHVnaW4iLCIvLyByZW1vdmVkIGJ5IGV4dHJhY3QtdGV4dC13ZWJwYWNrLXBsdWdpbiIsImNvbnN0IHN0eWxlaWNvbnMgPSB7fTtcclxuXHJcbnN0eWxlaWNvbnMuY3RhX2xheW91dF8xID0gPHNwYW4gY2xhc3NOYW1lPVwiY3RhX2xheW91dCBjdGFfbGF5b3V0XzFcIj48c3BhbiBjbGFzc05hbWU9XCJkYXNoaWNvbnMgZGFzaGljb25zLWZvcm1hdC1pbWFnZVwiPjwvc3Bhbj48c3BhbiBjbGFzc05hbWU9XCJjdGEtaW5mby1pY29uXCI+PC9zcGFuPjwvc3Bhbj47XHJcbnN0eWxlaWNvbnMuY3RhX2xheW91dF8yID0gPHNwYW4gY2xhc3NOYW1lPVwiY3RhX2xheW91dCBjdGFfbGF5b3V0XzJcIj48c3BhbiBjbGFzc05hbWU9XCJkYXNoaWNvbnMgZGFzaGljb25zLWZvcm1hdC1pbWFnZVwiPjwvc3Bhbj48c3BhbiBjbGFzc05hbWU9XCJjdGEtaW5mby1pY29uXCI+PC9zcGFuPjwvc3Bhbj47XHJcbnN0eWxlaWNvbnMuY3RhX2xheW91dF8zID0gPHNwYW4gY2xhc3NOYW1lPVwiY3RhX2xheW91dCBjdGFfbGF5b3V0XzNcIj48c3BhbiBjbGFzc05hbWU9XCJkYXNoaWNvbnMgZGFzaGljb25zLWZvcm1hdC1pbWFnZVwiPjwvc3Bhbj48c3BhbiBjbGFzc05hbWU9XCJjdGEtaW5mby1pY29uXCI+PC9zcGFuPjwvc3Bhbj47XHJcbnN0eWxlaWNvbnMuY3RhX2xheW91dF80ID0gPHNwYW4gY2xhc3NOYW1lPVwiY3RhX2xheW91dCBjdGFfbGF5b3V0XzRcIj48c3BhbiBjbGFzc05hbWU9XCJkYXNoaWNvbnNcIj48L3NwYW4+PHNwYW4gY2xhc3NOYW1lPVwiY3RhLWluZm8taWNvblwiPjwvc3Bhbj48L3NwYW4+O1xyXG5zdHlsZWljb25zLmN0YV9sYXlvdXRfNSA9IDxzcGFuIGNsYXNzTmFtZT1cImN0YV9sYXlvdXQgY3RhX2xheW91dF81XCI+PHNwYW4gY2xhc3NOYW1lPVwiZGFzaGljb25zXCI+PC9zcGFuPjxzcGFuIGNsYXNzTmFtZT1cImN0YS1pbmZvLWljb25cIj48L3NwYW4+PC9zcGFuPjtcclxuc3R5bGVpY29ucy5jdGFfbGF5b3V0XzYgPSA8c3BhbiBjbGFzc05hbWU9XCJjdGFfbGF5b3V0IGN0YV9sYXlvdXRfNlwiPjxzcGFuIGNsYXNzTmFtZT1cImRhc2hpY29uc1wiPjwvc3Bhbj48c3BhbiBjbGFzc05hbWU9XCJjdGEtaW5mby1pY29uXCI+PC9zcGFuPjwvc3Bhbj47XHJcbnN0eWxlaWNvbnMuY3RhX2xheW91dF83ID0gPHNwYW4gY2xhc3NOYW1lPVwiY3RhX2xheW91dCBjdGFfbGF5b3V0XzdcIj48c3BhbiBjbGFzc05hbWU9XCJkYXNoaWNvbnNcIj48L3NwYW4+PHNwYW4gY2xhc3NOYW1lPVwiY3RhLWluZm8taWNvblwiPjwvc3Bhbj48L3NwYW4+O1xyXG5zdHlsZWljb25zLmN0YV9sYXlvdXRfOCA9IDxzcGFuIGNsYXNzTmFtZT1cImN0YV9sYXlvdXQgY3RhX2xheW91dF84XCI+PHNwYW4gY2xhc3NOYW1lPVwiZGFzaGljb25zIGRhc2hpY29ucy1mb3JtYXQtaW1hZ2VcIj48L3NwYW4+PHNwYW4gY2xhc3NOYW1lPVwiY3RhLWluZm8taWNvblwiPjwvc3Bhbj48L3NwYW4+O1xyXG5zdHlsZWljb25zLmN0YV9sYXlvdXRfOSA9IDxzcGFuIGNsYXNzTmFtZT1cImN0YV9sYXlvdXQgY3RhX2xheW91dF85XCI+PHNwYW4gY2xhc3NOYW1lPVwiZGFzaGljb25zXCI+PC9zcGFuPjxzcGFuIGNsYXNzTmFtZT1cImN0YS1pbmZvLWljb25cIj48L3NwYW4+PC9zcGFuPjtcclxuc3R5bGVpY29ucy5jdGFfbGF5b3V0XzEwID0gPHNwYW4gY2xhc3NOYW1lPVwiY3RhX2xheW91dCBjdGFfbGF5b3V0XzEwXCI+PHNwYW4gY2xhc3NOYW1lPVwiZGFzaGljb25zXCI+PC9zcGFuPjxzcGFuIGNsYXNzTmFtZT1cImN0YS1pbmZvLWljb25cIj48L3NwYW4+PC9zcGFuPjtcclxuc3R5bGVpY29ucy5jdGFfbGF5b3V0XzExID0gPHNwYW4gY2xhc3NOYW1lPVwiY3RhX2xheW91dCBjdGFfbGF5b3V0XzExXCI+PHNwYW4gY2xhc3NOYW1lPVwiZGFzaGljb25zXCI+PC9zcGFuPjxzcGFuIGNsYXNzTmFtZT1cImN0YS1pbmZvLWljb25cIj48L3NwYW4+PC9zcGFuPjtcclxuXHJcbmV4cG9ydCBkZWZhdWx0IHN0eWxlaWNvbnM7XHJcbiJdLCJzb3VyY2VSb290IjoiIn0=
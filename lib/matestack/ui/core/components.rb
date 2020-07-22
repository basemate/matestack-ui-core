# Responsible for registering all the components under their names.
# TODO: Better file name?

# TODO: app folder isn't in the LOAD_PATH 🤔
# --> because of rails autoload when running as an engine, maybe add
# app to loadpath? But we might move away from app in favor of lib anyhow.

module Matestack::Ui::Core::Components
  def self.require_app_path(path)
    require_relative "../../../../app/#{path}"
  end

  def self.require_core_component(name)
    if name.include?("/")
      require_app_path "concepts/matestack/ui/core/#{name}/#{name.split("/").last}"
    else
      require_app_path "concepts/matestack/ui/core/#{name}/#{name}"
    end
  end

  require_app_path "helpers/matestack/ui/core/application_helper"
  require_app_path "lib/matestack/ui/core/has_view_context"
  require_app_path "lib/matestack/ui/core/html_attributes"
  require_app_path "lib/matestack/ui/core/properties"

  require_app_path "concepts/matestack/ui/core/component/base"
  require_app_path "concepts/matestack/ui/core/component/dynamic"
  require_app_path "concepts/matestack/ui/core/component/rerender"
  require_app_path "concepts/matestack/ui/core/component/static"

  require_core_component "abbr"
  require_core_component "action"
  require_core_component "address"
  require_core_component "area"
  require_core_component "article"
  require_core_component "aside"
  require_core_component "async"
  require_core_component "b"
  require_core_component "bdi"
  require_core_component "bdo"
  require_core_component "blockquote"
  require_core_component "br"
  require_core_component "button"
  require_core_component "caption"
  require_core_component "cite"
  require_core_component "code"
  require_app_path "concepts/matestack/ui/core/collection/helper"
  require_core_component "collection/content"
  require_core_component "collection/content/next"
  require_core_component "collection/content/page/link"
  require_core_component "collection/content/previous"
  require_core_component "collection/filter"
  require_core_component "collection/filter/input"
  require_core_component "collection/filter/reset"
  require_core_component "collection/filter/submit"
  require_core_component "collection/order"
  require_core_component "collection/order/toggle"
  require_core_component "collection/order/toggle/indicator"
  require_core_component "data"
  require_core_component "datalist"
  require_core_component "dd"
  require_core_component "del"
  require_core_component "details"
  require_core_component "dfn"
  require_core_component "dialog"
  require_core_component "div"
  require_core_component "dl"
  require_core_component "dt"
  require_core_component "em"
  require_core_component "fieldset"
  require_core_component "figure"
  require_core_component "footer"
  require_core_component "form"
  require_core_component "form/input"
  require_core_component "form/select"
  require_core_component "form/submit"
  require_core_component "header"
  require_core_component "heading"
  require_core_component "hr"
  require_core_component "icon"
  require_core_component "iframe"
  require_core_component "img"
  require_core_component "input"
  require_core_component "ins"
  require_core_component "kbd"
  require_core_component "label"
  require_core_component "legend"
  require_core_component "li"
  require_core_component "link"
  require_core_component "main"
  require_core_component "map"
  require_core_component "mark"
  require_core_component "meter"
  require_core_component "nav"
  require_core_component "noscript"
  require_core_component "object"
  require_core_component "ol"
  require_core_component "onclick"
  require_core_component "optgroup"
  require_core_component "option"
  require_core_component "output"
  require_core_component "paragraph"
  require_core_component "param"
  require_core_component "picture"
  require_core_component "plain"
  require_core_component "pre"
  require_core_component "progress"
  require_core_component "q"
  require_core_component "view"
  require_core_component "rp"
  require_core_component "rt"
  require_core_component "ruby"
  require_core_component "s"
  require_core_component "samp"
  require_core_component "section"
  require_core_component "small"
  require_core_component "span"
  require_core_component "strong"
  require_core_component "sub"
  require_core_component "summary"
  require_core_component "sup"
  require_core_component "table"
  require_core_component "tbody"
  require_core_component "td"
  require_core_component "template"
  require_core_component "textarea" # textarea needs to be required before form/textarea
  require_core_component "form/textarea"
  require_core_component "tfoot"
  require_core_component "th"
  require_core_component "thead"
  require_core_component "time"
  require_core_component "tr"
  require_core_component "transition"
  require_core_component "u"
  require_core_component "ul"
  require_core_component "unescaped"
  require_core_component "var"
  require_core_component "video"
  require_core_component "wbr"
  require_core_component "youtube"
end

Matestack::Ui::Core::Component::Registry.register_components(
  abbr: Matestack::Ui::Core::Abbr::Abbr,
  action: Matestack::Ui::Core::Action::Action,
  address: Matestack::Ui::Core::Address::Address,
  area: Matestack::Ui::Core::Area::Area,
  article: Matestack::Ui::Core::Article::Article,
  aside: Matestack::Ui::Core::Aside::Aside,
  async: Matestack::Ui::Core::Async::Async,
  b: Matestack::Ui::Core::B::B,
  bdi: Matestack::Ui::Core::Bdi::Bdi,
  bdo: Matestack::Ui::Core::Bdo::Bdo,
  blockquote: Matestack::Ui::Core::Blockquote::Blockquote,
  br: Matestack::Ui::Core::Br::Br,
  button: Matestack::Ui::Core::Button::Button,
  caption: Matestack::Ui::Core::Caption::Caption,
  cite: Matestack::Ui::Core::Cite::Cite,
  code: Matestack::Ui::Core::Code::Code,
  collection_content: Matestack::Ui::Core::Collection::Content::Content,
  collection_content_next: Matestack::Ui::Core::Collection::Content::Next::Next,
  collection_content_page_link: Matestack::Ui::Core::Collection::Content::Page::Link::Link,
  collection_content_previous: Matestack::Ui::Core::Collection::Content::Previous::Previous,
  collection_filter: Matestack::Ui::Core::Collection::Filter::Filter,
  collection_filter_input: Matestack::Ui::Core::Collection::Filter::Input::Input,
  collection_filter_reset: Matestack::Ui::Core::Collection::Filter::Reset::Reset,
  collection_filter_submit: Matestack::Ui::Core::Collection::Filter::Submit::Submit,
  collection_order: Matestack::Ui::Core::Collection::Order::Order,
  collection_order_toggle: Matestack::Ui::Core::Collection::Order::Toggle::Toggle,
  collection_order_toggle_indicator: Matestack::Ui::Core::Collection::Order::Toggle::Indicator::Indicator,
  data: Matestack::Ui::Core::Data::Data,
  datalist: Matestack::Ui::Core::Datalist::Datalist,
  dd: Matestack::Ui::Core::Dd::Dd,
  del: Matestack::Ui::Core::Del::Del,
  details: Matestack::Ui::Core::Details::Details,
  dfn: Matestack::Ui::Core::Dfn::Dfn,
  dialog: Matestack::Ui::Core::Dialog::Dialog,
  div: Matestack::Ui::Core::Div::Div,
  dl: Matestack::Ui::Core::Dl::Dl,
  dt: Matestack::Ui::Core::Dt::Dt,
  em: Matestack::Ui::Core::Em::Em,
  fieldset: Matestack::Ui::Core::Fieldset::Fieldset,
  figure: Matestack::Ui::Core::Figure::Figure,
  footer: Matestack::Ui::Core::Footer::Footer,
  form: Matestack::Ui::Core::Form::Form,
  form_input: Matestack::Ui::Core::Form::Input::Input,
  form_select: Matestack::Ui::Core::Form::Select::Select,
  form_submit: Matestack::Ui::Core::Form::Submit::Submit,
  form_textarea: Matestack::Ui::Core::Form::Textarea::Textarea,
  header: Matestack::Ui::Core::Header::Header,
  heading: Matestack::Ui::Core::Heading::Heading,
  hr: Matestack::Ui::Core::Hr::Hr,
  icon: Matestack::Ui::Core::Icon::Icon,
  italic: Matestack::Ui::Core::Icon::Icon, # alias icon as italic
  iframe: Matestack::Ui::Core::Iframe::Iframe,
  img: Matestack::Ui::Core::Img::Img,
  input: Matestack::Ui::Core::Input::Input,
  ins: Matestack::Ui::Core::Ins::Ins,
  kbd: Matestack::Ui::Core::Kbd::Kbd,
  label: Matestack::Ui::Core::Label::Label,
  legend: Matestack::Ui::Core::Legend::Legend,
  li: Matestack::Ui::Core::Li::Li,
  link: Matestack::Ui::Core::Link::Link,
  main: Matestack::Ui::Core::Main::Main,
  map: Matestack::Ui::Core::Map::Map,
  mark: Matestack::Ui::Core::Mark::Mark,
  meter: Matestack::Ui::Core::Meter::Meter,
  nav: Matestack::Ui::Core::Nav::Nav,
  noscript: Matestack::Ui::Core::Noscript::Noscript,
  object: Matestack::Ui::Core::Object::Object,
  ol: Matestack::Ui::Core::Ol::Ol,
  onclick: Matestack::Ui::Core::Onclick::Onclick,
  optgroup: Matestack::Ui::Core::Optgroup::Optgroup,
  option: Matestack::Ui::Core::Option::Option,
  output: Matestack::Ui::Core::Output::Output,
  paragraph: Matestack::Ui::Core::Paragraph::Paragraph,
  pg: Matestack::Ui::Core::Paragraph::Paragraph, # alias paragraph as pg
  param: Matestack::Ui::Core::Param::Param,
  picture: Matestack::Ui::Core::Picture::Picture,
  plain: Matestack::Ui::Core::Plain::Plain,
  pre: Matestack::Ui::Core::Pre::Pre,
  progress: Matestack::Ui::Core::Progress::Progress,
  q: Matestack::Ui::Core::Q::Q,
  rails_view: Matestack::Ui::Core::View::View,
  rp: Matestack::Ui::Core::Rp::Rp,
  rt: Matestack::Ui::Core::Rt::Rt,
  ruby: Matestack::Ui::Core::Ruby::Ruby,
  s: Matestack::Ui::Core::S::S,
  samp: Matestack::Ui::Core::Samp::Samp,
  section: Matestack::Ui::Core::Section::Section,
  small: Matestack::Ui::Core::Small::Small,
  span: Matestack::Ui::Core::Span::Span,
  strong: Matestack::Ui::Core::Strong::Strong,
  sub: Matestack::Ui::Core::Sub::Sub,
  summary: Matestack::Ui::Core::Summary::Summary,
  sup: Matestack::Ui::Core::Sup::Sup,
  table: Matestack::Ui::Core::Table::Table,
  tbody: Matestack::Ui::Core::Tbody::Tbody,
  td: Matestack::Ui::Core::Td::Td,
  template: Matestack::Ui::Core::Template::Template,
  textarea: Matestack::Ui::Core::Textarea::Textarea,
  tfoot: Matestack::Ui::Core::Tfoot::Tfoot,
  th: Matestack::Ui::Core::Th::Th,
  thead: Matestack::Ui::Core::Thead::Thead,
  time: Matestack::Ui::Core::Time::Time,
  tr: Matestack::Ui::Core::Tr::Tr,
  transition: Matestack::Ui::Core::Transition::Transition,
  u: Matestack::Ui::Core::U::U,
  ul: Matestack::Ui::Core::Ul::Ul,
  unescaped: Matestack::Ui::Core::Unescaped::Unescaped,
  var: Matestack::Ui::Core::Var::Var,
  video: Matestack::Ui::Core::Video::Video,
  wbr: Matestack::Ui::Core::Wbr::Wbr,
  youtube: Matestack::Ui::Core::Youtube::Youtube,
)

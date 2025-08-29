// Minimal TS declaration so JSX accepts the custom element
// You can extend this later with real attributes if needed.
declare namespace JSX {
  interface IntrinsicElements {
    "model-viewer": React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement> & {
      src?: string;
      "camera-controls"?: boolean;
      "auto-rotate"?: boolean;
      autoplay?: boolean;
      exposure?: string | number;
      "interaction-prompt"?: string;
      ar?: boolean;
      style?: React.CSSProperties;
      // Allow any additional attributes provided by the web component
      [key: string]: any;
    };
  }
}

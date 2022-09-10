import EditorRes from "src/Editor.mjs";

// This can be re-exported as is (no Fast-Refresh issues)
export { getServerSideProps } from "src/Editor.mjs";

export default function Editor(props) {
  return <EditorRes {...props}/>;
}

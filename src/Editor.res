module P = {
  @react.component
  let make = (~children) => <p className="mb-2"> children </p>
}

let s = React.string

module Counter = {
  @react.component
  let make = (~count, ~incCount, ~decCount) =>
    <div>
      <span className="w-[50px] text-center inline-block"> {s(Helpers.formatNum(count))} </span>
      <Button onClick=incCount> {s("+")} </Button>
      <Button onClick=decCount> {s("–")} </Button>
    </div>
}

module Editor = {
  @react.component
  let make = () => {
    let (count, setCount) = React.useState(_ => 0)
    let incCount = _ => setCount(current => current + 1)
    let decCount = _ => setCount(current => current - 1)

    <div className="h-[100vh] flex flex-col">
      <h1 className="p-1 text-3xl font-semibold"> {"Editor"->React.string} </h1>
      <div className="flex flex-row grow">
        <div className="m-1 border rounded p-1 grow overflow-scroll">
          {s("Preview?")}
          <Counter count incCount decCount />
        </div>
        <div className="m-1 border rounded p-1 grow overflow-scroll"> {s("DOM tree?")} </div>
      </div>
    </div>
  }
}

let default = () => <Editor />

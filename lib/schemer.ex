defmodule Schemer do
  def main([data_file | []]) do
    schema = data_file
    |> File.read!()
    |> Jason.decode!()
    |> List.wrap()
    |> SmartCity.SchemaGenerator.generate_schema()
    |> Jason.encode!()

    File.write!("./schema.json", schema)
  end
end

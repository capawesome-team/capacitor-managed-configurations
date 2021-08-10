export interface ManagedConfigurationsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}

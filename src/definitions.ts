export interface ManagedConfigurationsPlugin {
  get(options: GetOptions): Promise<GetResult>;
}

export interface GetOptions {
  key: string;
  type: 'string' | 'number' | 'boolean';
}

export interface GetResult {
  value: string | number | boolean | null;
}

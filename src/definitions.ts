export interface ManagedConfigurationsPlugin {
  getString(options: GetOptions): Promise<GetResult<string>>;
  getNumber(options: GetOptions): Promise<GetResult<number>>;
  getBoolean(options: GetOptions): Promise<GetResult<boolean>>;
}

export interface GetOptions {
  key: string;
}

export interface GetResult<T> {
  value: T | null;
}

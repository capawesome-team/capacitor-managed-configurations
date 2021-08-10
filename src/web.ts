import { WebPlugin } from '@capacitor/core';

import type { GetOptions, GetResult, ManagedConfigurationsPlugin } from './definitions';

export class ManagedConfigurationsWeb extends WebPlugin implements ManagedConfigurationsPlugin {
  async get(_options: GetOptions): Promise<GetResult> {
    throw new Error('Not implemented on web.');
  }
}

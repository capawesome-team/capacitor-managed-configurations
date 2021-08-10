import { WebPlugin } from '@capacitor/core';

import type { ManagedConfigurationsPlugin } from './definitions';

export class ManagedConfigurationsWeb extends WebPlugin implements ManagedConfigurationsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

<p align="center"><br><img src="https://user-images.githubusercontent.com/236501/85893648-1c92e880-b7a8-11ea-926d-95355b8175c7.png" width="128" height="128" /></p>
<h3 align="center">Managed Configuration</h3>
<p align="center"><strong><code>@robingenz/capacitor-managed-configurations</code></strong></p>
<p align="center">
  Capacitor plugin to access managed configuration settings.
</p>

<p align="center">
  <img src="https://img.shields.io/maintenance/yes/2021?style=flat-square" />
  <a href="https://github.com/robingenz/capacitor-managed-configurations/actions?query=workflow%3A%22CI%22"><img src="https://img.shields.io/github/workflow/status/robingenz/capacitor-managed-configurations/CI/main?style=flat-square" /></a>
  <a href="https://www.npmjs.com/package/@robingenz/capacitor-managed-configurations"><img src="https://img.shields.io/npm/l/@robingenz/capacitor-managed-configurations?style=flat-square" /></a>
<br>
  <a href="https://www.npmjs.com/package/@robingenz/capacitor-managed-configurations"><img src="https://img.shields.io/npm/dw/@robingenz/capacitor-managed-configurations?style=flat-square" /></a>
  <a href="https://www.npmjs.com/package/@robingenz/capacitor-managed-configurations"><img src="https://img.shields.io/npm/v/@robingenz/capacitor-managed-configurations?style=flat-square" /></a>
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
<a href="#contributors-"><img src="https://img.shields.io/badge/all%20contributors-1-orange?style=flat-square" /></a>
<!-- ALL-CONTRIBUTORS-BADGE:END -->
</p>

## Maintainers

| Maintainer | GitHub                                    | Social                                        |
| ---------- | ----------------------------------------- | --------------------------------------------- |
| Robin Genz | [robingenz](https://github.com/robingenz) | [@robin_genz](https://twitter.com/robin_genz) |

## Installation

```bash
npm install @robingenz/capacitor-managed-configurations
npx cap sync
```

On **Android**, see [Define managed configurations](https://developer.android.com/work/managed-configurations#define-configuration) and follow the instructions to declare the app's managed configurations correctly.

## Configuration

No configuration required for this plugin.

## Usage

```typescript
import { ManagedConfigurations } from '@robingenz/capacitor-managed-configurations';

const getString = async () => {
  const result = await ManagedConfigurations.getString({ key: 'server_url' });
  return result.value;
};

const getNumber = async () => {
  const result = await ManagedConfigurations.getNumber({ key: 'server_port' });
  return result.value;
};

const getBoolean = async () => {
  const result = await ManagedConfigurations.getBoolean({ key: 'download_on_cellular' });
  return result.value;
};
```

## API

<docgen-index>

* [`getString(...)`](#getstring)
* [`getNumber(...)`](#getnumber)
* [`getBoolean(...)`](#getboolean)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### getString(...)

```typescript
getString(options: GetOptions) => Promise<GetResult<string>>
```

| Param         | Type                                              |
| ------------- | ------------------------------------------------- |
| **`options`** | <code><a href="#getoptions">GetOptions</a></code> |

**Returns:** <code>Promise&lt;<a href="#getresult">GetResult</a>&lt;string&gt;&gt;</code>

--------------------


### getNumber(...)

```typescript
getNumber(options: GetOptions) => Promise<GetResult<number>>
```

| Param         | Type                                              |
| ------------- | ------------------------------------------------- |
| **`options`** | <code><a href="#getoptions">GetOptions</a></code> |

**Returns:** <code>Promise&lt;<a href="#getresult">GetResult</a>&lt;number&gt;&gt;</code>

--------------------


### getBoolean(...)

```typescript
getBoolean(options: GetOptions) => Promise<GetResult<boolean>>
```

| Param         | Type                                              |
| ------------- | ------------------------------------------------- |
| **`options`** | <code><a href="#getoptions">GetOptions</a></code> |

**Returns:** <code>Promise&lt;<a href="#getresult">GetResult</a>&lt;boolean&gt;&gt;</code>

--------------------


### Interfaces


#### GetResult

| Prop        | Type                   |
| ----------- | ---------------------- |
| **`value`** | <code>T \| null</code> |


#### GetOptions

| Prop      | Type                |
| --------- | ------------------- |
| **`key`** | <code>string</code> |

</docgen-api>

## Test your implementation

On **Android**, see [Set up device owner for testing](https://source.android.com/devices/tech/admin/testing-setup#set_up_the_device_owner_for_testing) and follow the instructions to set up a device owner testing environment.

## Changelog

See [CHANGELOG.md](https://github.com/robingenz/capacitor-managed-configurations/blob/master/CHANGELOG.md).

## License

See [LICENSE](https://github.com/robingenz/capacitor-managed-configurations/blob/master/LICENSE).

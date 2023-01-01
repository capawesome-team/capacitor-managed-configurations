<p align="center"><br><img src="https://avatars.githubusercontent.com/u/105555861" width="128" height="128" /></p>
<h3 align="center">Managed Configuration</h3>
<p align="center"><strong><code>@capawesome/capacitor-managed-configurations</code></strong></p>
<p align="center">
  Capacitor plugin to access managed configuration settings.
</p>

<p align="center">
  <img src="https://img.shields.io/maintenance/yes/2023?style=flat-square" />
  <a href="https://github.com/capawesome-team/capacitor-managed-configurations/actions?query=workflow%3A%22CI%22"><img src="https://img.shields.io/github/actions/workflow/status/capawesome-team/capacitor-managed-configurations/ci.yml?branch=main&style=flat-square" /></a>
  <a href="https://www.npmjs.com/package/@capawesome/capacitor-managed-configurations"><img src="https://img.shields.io/npm/l/@capawesome/capacitor-managed-configurations?style=flat-square" /></a>
<br>
  <a href="https://www.npmjs.com/package/@capawesome/capacitor-managed-configurations"><img src="https://img.shields.io/npm/dw/@capawesome/capacitor-managed-configurations?style=flat-square" /></a>
  <a href="https://www.npmjs.com/package/@capawesome/capacitor-managed-configurations"><img src="https://img.shields.io/npm/v/@capawesome/capacitor-managed-configurations?style=flat-square" /></a>
  <a href="https://github.com/capawesome-team"><img src="https://img.shields.io/badge/part%20of-capawesome-%234f46e5?style=flat-square" /></a>
</p>

## Maintainers

| Maintainer | GitHub                                    | Social                                        |
| ---------- | ----------------------------------------- | --------------------------------------------- |
| Robin Genz | [robingenz](https://github.com/robingenz) | [@robin_genz](https://twitter.com/robin_genz) |

## Sponsors

This is an MIT-licensed open source project. 
It can grow thanks to the support by these awesome people. 
If you'd like to join them, please read more [here](https://github.com/sponsors/capawesome-team).  

<!-- sponsors --><!-- sponsors -->

## Installation

```bash
npm install @capawesome/capacitor-managed-configurations
npx cap sync
```

On **Android**, see [Define managed configurations](https://developer.android.com/work/managed-configurations#define-configuration) and follow the instructions to declare the app's managed configurations correctly.

> ⚠️ The iOS implementation could not be tested yet. I appreciate any feedback.

## Configuration

No configuration required for this plugin.

## Demo

A working example can be found here: [robingenz/capacitor-plugin-demo](https://github.com/robingenz/capacitor-plugin-demo)

## Usage

```typescript
import { ManagedConfigurations } from '@capawesome/capacitor-managed-configurations';

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

Fetches the value associated with the given key, or `null` if no mapping exists for the given key.

Only available for Android and iOS.

| Param         | Type                                              |
| ------------- | ------------------------------------------------- |
| **`options`** | <code><a href="#getoptions">GetOptions</a></code> |

**Returns:** <code>Promise&lt;<a href="#getresult">GetResult</a>&lt;string&gt;&gt;</code>

--------------------


### getNumber(...)

```typescript
getNumber(options: GetOptions) => Promise<GetResult<number>>
```

Fetches the value associated with the given key, or `null` if no mapping exists for the given key.

Only available for Android and iOS.

| Param         | Type                                              |
| ------------- | ------------------------------------------------- |
| **`options`** | <code><a href="#getoptions">GetOptions</a></code> |

**Returns:** <code>Promise&lt;<a href="#getresult">GetResult</a>&lt;number&gt;&gt;</code>

--------------------


### getBoolean(...)

```typescript
getBoolean(options: GetOptions) => Promise<GetResult<boolean>>
```

Fetches the value associated with the given key, or `null` if no mapping exists for the given key.

Only available for Android and iOS.

| Param         | Type                                              |
| ------------- | ------------------------------------------------- |
| **`options`** | <code><a href="#getoptions">GetOptions</a></code> |

**Returns:** <code>Promise&lt;<a href="#getresult">GetResult</a>&lt;boolean&gt;&gt;</code>

--------------------


### Interfaces


#### GetResult

| Prop        | Type                   | Description                                                                             |
| ----------- | ---------------------- | --------------------------------------------------------------------------------------- |
| **`value`** | <code>T \| null</code> | The value of the configuration entry, or `null` if no mapping exists for the given key. |


#### GetOptions

| Prop      | Type                | Description                             |
| --------- | ------------------- | --------------------------------------- |
| **`key`** | <code>string</code> | Unique key for the configuration entry. |

</docgen-api>

## Test your implementation

On **Android**, see [Set up device owner for testing](https://source.android.com/devices/tech/admin/testing-setup#set_up_the_device_owner_for_testing) and follow the instructions to set up a device owner testing environment.

On **iOS**, you need to install the app as a [managed app](https://support.apple.com/de-de/guide/deployment-reference-ios/iorf4d72eded/web) with a MDM solution.

## Changelog

See [CHANGELOG.md](https://github.com/capawesome-team/capacitor-managed-configurations/blob/master/CHANGELOG.md).

## License

See [LICENSE](https://github.com/capawesome-team/capacitor-managed-configurations/blob/master/LICENSE).

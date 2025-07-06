<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace App\Enums;

enum ActionPositionEnum: string
{
    case INDEX = '';
    case TOP = 'top';
    case ACTION = 'action';
    case EXPORT = 'export';
    case OTHER = 'other';

    public static function casesArray(): array
    {
        return [
            self::INDEX->value => 'Index',
            self::TOP->value => 'Top',
            self::ACTION->value => 'Action',
            self::EXPORT->value => 'Export',
            self::OTHER->value => 'Other',
        ];
    }
}

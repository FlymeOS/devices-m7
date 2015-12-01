.class public Lcom/htc/lib1/settings/provider/Settings$System;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/htc/lib1/settings/provider/HtcISettingsSystem;


# static fields
.field protected static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field protected static final VOLUME_SETTINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 486
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "volume_voice"

    aput-object v1, v0, v3

    const-string v1, "volume_system"

    aput-object v1, v0, v4

    const-string v1, "volume_ring"

    aput-object v1, v0, v5

    const-string v1, "volume_music"

    aput-object v1, v0, v6

    const-string v1, "volume_alarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lib1/settings/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 900
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stay_on_while_plugged_in"

    aput-object v1, v0, v3

    const-string v1, "wifi_use_static_ip"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wifi_static_dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_discoverability"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_discoverability_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dim_screen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vibrate_input_devices"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mode_ringer"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mode_ringer_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mute_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "volume_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "volume_system"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "volume_ring"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "volume_music"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "volume_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "volume_voice_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "volume_system_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "volume_ring_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "volume_music_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "volume_alarm_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "volume_notification_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "volume_bluetooth_sco_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "auto_replace"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "auto_caps"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "auto_punctuate"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "auto_time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "time_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "dtmf_tone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "tty_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sound_effects_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "power_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "dock_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "show_web_suggestions"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "notification_light_pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "sip_call_options"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "sip_receive_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "pointer_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lib1/settings/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.class public Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;
.super Lcom/htc/lib1/settings/provider/b;
.source "HtcWrapSettings.java"


# static fields
.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field private static sGlobalQuickTipFlag:Z

.field private static sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 143
    sput-boolean v5, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    .line 302
    sget-object v0, Lcom/htc/lib1/settings/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "volume_system"

    aput-object v2, v1, v6

    const-string v2, "volume_dtmf"

    aput-object v2, v1, v5

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 311
    sget-object v0, Lcom/htc/lib1/settings/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    const/16 v1, 0x134

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "weather_wallpaper_animation_allowed"

    aput-object v2, v1, v6

    const-string v2, "wifi_sleep_policy"

    aput-object v2, v1, v5

    const-string v2, "bt_ftp_enable"

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v3, "bt_map_enable"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "inactivity_time"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "notifications_use_ring_volume"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "volume_dtmf"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "volume_voice_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "volume_system_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "volume_ring_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "volume_music_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "volume_alarm_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "volume_notification_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "volume_voice_last_audible_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "volume_system_last_audible_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "volume_ring_last_audible_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "volume_music_last_audible_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "volume_alarm_last_audible_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "volume_notification_last_audible_earpiece"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "volume_voice_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "volume_system_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "volume_ring_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "volume_music_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "volume_alarm_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "volume_notification_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "volume_voice_last_audible_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "volume_system_last_audible_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "volume_ring_last_audible_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "volume_music_last_audible_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "volume_alarm_last_audible_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "volume_notification_last_audible_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "volume_voice_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "volume_system_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "volume_ring_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "volume_music_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "volume_alarm_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "volume_notification_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "volume_voice_last_audible_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "volume_system_last_audible_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "volume_ring_last_audible_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "volume_music_last_audible_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "volume_alarm_last_audible_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "volume_notification_last_audible_headset"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "volume_voice_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "volume_system_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "volume_ring_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "volume_music_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "volume_alarm_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "volume_notification_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "volume_voice_last_audible_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "volume_system_last_audible_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "volume_ring_last_audible_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "volume_music_last_audible_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "volume_alarm_last_audible_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "volume_notification_last_audible_headphone"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "volume_voice_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "volume_system_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "volume_ring_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "volume_music_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "volume_alarm_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "volume_notification_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "volume_voice_last_audible_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "volume_system_last_audible_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "volume_ring_last_audible_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "volume_music_last_audible_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "volume_alarm_last_audible_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "volume_notification_last_audible_bt_sco"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "volume_voice_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "volume_system_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "volume_ring_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "volume_music_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "volume_alarm_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "volume_notification_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "volume_voice_last_audible_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "volume_system_last_audible_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "volume_ring_last_audible_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "volume_music_last_audible_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "volume_alarm_last_audible_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "volume_notification_last_audible_bt_sco_hs"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "volume_voice_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "volume_system_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "volume_ring_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "volume_music_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "volume_alarm_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "volume_notification_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "volume_voice_last_audible_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "volume_system_last_audible_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "volume_ring_last_audible_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "volume_music_last_audible_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "volume_alarm_last_audible_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "volume_notification_last_audible_bt_sco_carkit"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "volume_voice_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "volume_system_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "volume_ring_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "volume_music_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "volume_alarm_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "volume_notification_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "volume_voice_last_audible_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "volume_system_last_audible_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "volume_ring_last_audible_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "volume_music_last_audible_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "volume_alarm_last_audible_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "volume_notification_last_audible_bt_a2dp"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "volume_voice_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "volume_system_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "volume_ring_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "volume_music_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "volume_alarm_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "volume_notification_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "volume_voice_last_audible_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "volume_system_last_audible_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "volume_ring_last_audible_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "volume_music_last_audible_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "volume_alarm_last_audible_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "volume_notification_last_audible_bt_a2dp_hp"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "volume_voice_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "volume_system_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "volume_ring_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "volume_music_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "volume_alarm_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "volume_notification_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "volume_voice_last_audible_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "volume_system_last_audible_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "volume_ring_last_audible_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "volume_music_last_audible_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "volume_alarm_last_audible_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "volume_notification_last_audible_bt_a2dp_spk"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "volume_voice_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "volume_system_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "volume_ring_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string v3, "volume_music_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string v3, "volume_alarm_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string v3, "volume_notification_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string v3, "volume_voice_last_audible_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string v3, "volume_system_last_audible_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-string v3, "volume_ring_last_audible_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string v3, "volume_music_last_audible_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string v3, "volume_alarm_last_audible_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string v3, "volume_notification_last_audible_aux_digital"

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string v3, "volume_voice_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-string v3, "volume_system_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string v3, "volume_ring_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string v3, "volume_music_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-string v3, "volume_alarm_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string v3, "volume_notification_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string v3, "volume_voice_last_audible_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-string v3, "volume_system_last_audible_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string v3, "volume_ring_last_audible_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x94

    const-string v3, "volume_music_last_audible_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x95

    const-string v3, "volume_alarm_last_audible_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x96

    const-string v3, "volume_notification_last_audible_analog_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x97

    const-string v3, "volume_voice_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x98

    const-string v3, "volume_system_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x99

    const-string v3, "volume_ring_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x9a

    const-string v3, "volume_music_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x9b

    const-string v3, "volume_alarm_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x9c

    const-string v3, "volume_notification_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x9d

    const-string v3, "volume_voice_last_audible_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x9e

    const-string v3, "volume_system_last_audible_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0x9f

    const-string v3, "volume_ring_last_audible_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    const-string v3, "volume_music_last_audible_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0xa1

    const-string v3, "volume_alarm_last_audible_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0xa2

    const-string v3, "volume_notification_last_audible_digital_dock"

    aput-object v3, v1, v2

    const/16 v2, 0xa3

    const-string v3, "volume_voice_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xa4

    const-string v3, "volume_system_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xa5

    const-string v3, "volume_ring_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xa6

    const-string v3, "volume_music_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xa7

    const-string v3, "volume_alarm_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xa8

    const-string v3, "volume_notification_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xa9

    const-string v3, "volume_voice_last_audible_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xaa

    const-string v3, "volume_system_last_audible_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xab

    const-string v3, "volume_ring_last_audible_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xac

    const-string v3, "volume_music_last_audible_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xad

    const-string v3, "volume_alarm_last_audible_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xae

    const-string v3, "volume_notification_last_audible_usb_accessory"

    aput-object v3, v1, v2

    const/16 v2, 0xaf

    const-string v3, "volume_voice_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb0

    const-string v3, "volume_system_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb1

    const-string v3, "volume_ring_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb2

    const-string v3, "volume_music_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb3

    const-string v3, "volume_alarm_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb4

    const-string v3, "volume_notification_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb5

    const-string v3, "volume_voice_last_audible_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb6

    const-string v3, "volume_system_last_audible_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb7

    const-string v3, "volume_ring_last_audible_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb8

    const-string v3, "volume_music_last_audible_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xb9

    const-string v3, "volume_alarm_last_audible_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xba

    const-string v3, "volume_notification_last_audible_usb_device"

    aput-object v3, v1, v2

    const/16 v2, 0xbb

    const-string v3, "volume_voice_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xbc

    const-string v3, "volume_system_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xbd

    const-string v3, "volume_ring_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    const-string v3, "volume_music_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xbf

    const-string v3, "volume_alarm_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc0

    const-string v3, "volume_notification_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc1

    const-string v3, "volume_voice_last_audible_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc2

    const-string v3, "volume_system_last_audible_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc3

    const-string v3, "volume_ring_last_audible_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc4

    const-string v3, "volume_music_last_audible_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc5

    const-string v3, "volume_alarm_last_audible_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc6

    const-string v3, "volume_notification_last_audible_fm_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc7

    const-string v3, "volume_voice_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc8

    const-string v3, "volume_system_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xc9

    const-string v3, "volume_ring_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xca

    const-string v3, "volume_music_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xcb

    const-string v3, "volume_alarm_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xcc

    const-string v3, "volume_notification_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xcd

    const-string v3, "volume_voice_last_audible_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xce

    const-string v3, "volume_system_last_audible_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xcf

    const-string v3, "volume_ring_last_audible_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xd0

    const-string v3, "volume_music_last_audible_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xd1

    const-string v3, "volume_alarm_last_audible_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xd2

    const-string v3, "volume_notification_last_audible_fm_tx_device"

    aput-object v3, v1, v2

    const/16 v2, 0xd3

    const-string v3, "volume_voice_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xd4

    const-string v3, "volume_system_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xd5

    const-string v3, "volume_ring_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xd6

    const-string v3, "volume_music_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xd7

    const-string v3, "volume_alarm_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xd8

    const-string v3, "volume_notification_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xd9

    const-string v3, "volume_voice_last_audible_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xda

    const-string v3, "volume_system_last_audible_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xdb

    const-string v3, "volume_ring_last_audible_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xdc

    const-string v3, "volume_music_last_audible_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xdd

    const-string v3, "volume_alarm_last_audible_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xde

    const-string v3, "volume_notification_last_audible_direct_output"

    aput-object v3, v1, v2

    const/16 v2, 0xdf

    const-string v3, "volume_voice_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe0

    const-string v3, "volume_system_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe1

    const-string v3, "volume_ring_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe2

    const-string v3, "volume_music_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe3

    const-string v3, "volume_alarm_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe4

    const-string v3, "volume_notification_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe5

    const-string v3, "volume_voice_last_audible_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe6

    const-string v3, "volume_system_last_audible_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe7

    const-string v3, "volume_ring_last_audible_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe8

    const-string v3, "volume_music_last_audible_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xe9

    const-string v3, "volume_alarm_last_audible_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xea

    const-string v3, "volume_notification_last_audible_hdmi"

    aput-object v3, v1, v2

    const/16 v2, 0xeb

    const-string v3, "volume_fm"

    aput-object v3, v1, v2

    const/16 v2, 0xec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_voice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xed

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xee

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_ring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_voice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_ring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mode_ringer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_voice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xfa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xfb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_ring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xfc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xfd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xfe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xff

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_voice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x100

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x101

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_ring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x102

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x103

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x104

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "volume_notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x105

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mode_ringer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x106

    const-string v3, "volume_dtmf_last_audible"

    aput-object v3, v1, v2

    const/16 v2, 0x107

    const-string v3, "be_polite"

    aput-object v3, v1, v2

    const/16 v2, 0x108

    const-string v3, "pocket_mode"

    aput-object v3, v1, v2

    const/16 v2, 0x109

    const-string v3, "flip_to_speaker"

    aput-object v3, v1, v2

    const/16 v2, 0x10a

    const-string v3, "window_animation_scale"

    aput-object v3, v1, v2

    const/16 v2, 0x10b

    const-string v3, "transition_animation_scale"

    aput-object v3, v1, v2

    const/16 v2, 0x10c

    const-string v3, "silent_mode"

    aput-object v3, v1, v2

    const/16 v2, 0x10d

    const-string v3, "FOTA_periodic_checkin"

    aput-object v3, v1, v2

    const/16 v2, 0x10e

    const-string v3, "roaming_ringtone_on"

    aput-object v3, v1, v2

    const/16 v2, 0x10f

    const-string v3, "sd_card_notifications"

    aput-object v3, v1, v2

    const/16 v2, 0x110

    const-string v3, "psaver_enable"

    aput-object v3, v1, v2

    const/16 v2, 0x111

    const-string v3, "psaver_schedule"

    aput-object v3, v1, v2

    const/16 v2, 0x112

    const-string v3, "htc_application_automatic_startup"

    aput-object v3, v1, v2

    const/16 v2, 0x113

    const-string v3, "htc_application_notification"

    aput-object v3, v1, v2

    const/16 v2, 0x114

    const-string v3, "htc_wireless_sleep_mode_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x115

    const-string v3, "htc_wireless_sleep_start_time"

    aput-object v3, v1, v2

    const/16 v2, 0x116

    const-string v3, "htc_wireless_sleep_end_time"

    aput-object v3, v1, v2

    const/16 v2, 0x117

    const-string v3, "charm_message_notification"

    aput-object v3, v1, v2

    const/16 v2, 0x118

    const-string v3, "charm_phone_notification"

    aput-object v3, v1, v2

    const/16 v2, 0x119

    const-string v3, "charm_voice_mail_notification"

    aput-object v3, v1, v2

    const/16 v2, 0x11a

    const-string v3, "charm_message_received_notification"

    aput-object v3, v1, v2

    const/16 v2, 0x11b

    const-string v3, "charm_indicator_supported"

    aput-object v3, v1, v2

    const/16 v2, 0x11c

    const-string v3, "htcspeak_default_lang"

    aput-object v3, v1, v2

    const/16 v2, 0x11d

    const-string v3, "enable_power_efficiency"

    aput-object v3, v1, v2

    const/16 v2, 0x11e

    const-string v3, "set_powermode"

    aput-object v3, v1, v2

    const/16 v2, 0x11f

    const-string v3, "powersaver_enable"

    aput-object v3, v1, v2

    const/16 v2, 0x120

    const-string v3, "htc_app_storage_loc_backup"

    aput-object v3, v1, v2

    const/16 v2, 0x121

    const-string v3, "htc_gestures_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x122

    const-string v3, "htc_animation_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x123

    const-string v3, "htc_window_animation_scale"

    aput-object v3, v1, v2

    const/16 v2, 0x124

    const-string v3, "htc_transition_animation_scale"

    aput-object v3, v1, v2

    const/16 v2, 0x125

    const-string v3, "htc_font_size"

    aput-object v3, v1, v2

    const/16 v2, 0x126

    const-string v3, "compass_warning"

    aput-object v3, v1, v2

    const/16 v2, 0x127

    const-string v3, "date_format_short"

    aput-object v3, v1, v2

    const/16 v2, 0x128

    const-string v3, "accelerometer_rotation"

    aput-object v3, v1, v2

    const/16 v2, 0x129

    const-string v3, "htc_magnifier_setting"

    aput-object v3, v1, v2

    const/16 v2, 0x12a

    const-string v3, "bluetooth_name"

    aput-object v3, v1, v2

    const/16 v2, 0x12b

    const-string v3, "bt_ftp_enable"

    aput-object v3, v1, v2

    const/16 v2, 0x12c

    const-string v3, "bt_map_enable"

    aput-object v3, v1, v2

    const/16 v2, 0x12d

    const-string v3, "vibrate_on"

    aput-object v3, v1, v2

    const/16 v2, 0x12e

    const-string v3, "htc_pull_to_fresh_sound_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x12f

    const-string v3, "emergency_tone"

    aput-object v3, v1, v2

    const/16 v2, 0x130

    const-string v3, "htc_dnd_auto_turn_off_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x131

    const-string v3, "htc_dnd_auto_turn_off_minutes"

    aput-object v3, v1, v2

    const/16 v2, 0x132

    const-string v3, "htc_dnd_play_sound_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x133

    const-string v3, "notifications_use_ring_volume"

    aput-object v3, v1, v2

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public static disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    invoke-static {p0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    .line 170
    sget-object v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->saveQuickTipState(Landroid/content/ContentResolver;)V

    .line 176
    # getter for: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z
    invoke-static {}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    .line 179
    :cond_0
    return-void
.end method

.method public static getQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-static {p0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    .line 148
    sget-object v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 151
    if-nez v0, :cond_0

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    :cond_0
    # getter for: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z
    invoke-static {}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$100(Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appQuickTipFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$100(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    .line 161
    :cond_1
    sget-boolean v2, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadQuickTipState(Landroid/content/ContentResolver;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 252
    # getter for: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z
    invoke-static {}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "loadQuickTipState()"

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$100(Ljava/lang/String;)V

    .line 255
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 259
    const-string v0, "show_all_quick_tips"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-nez v0, :cond_2

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 265
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 266
    # getter for: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z
    invoke-static {}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickTip["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$100(Ljava/lang/String;)V

    .line 273
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 278
    aget-object v3, v2, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 279
    sget-object v4, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :pswitch_0
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    goto :goto_2

    .line 284
    :cond_4
    # getter for: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z
    invoke-static {}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {p0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static printQuickTipState(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quick-tip-set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "show_all_quick_tips"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "show_all_quick_tips"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$100(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private static saveQuickTipState(Landroid/content/ContentResolver;)V
    .locals 6

    .prologue
    const/16 v5, 0x3b

    const/4 v0, 0x1

    .line 233
    # getter for: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z
    invoke-static {}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "saveQuickTipState()"

    # invokes: Lcom/htc/lib1/settings/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->access$100(Ljava/lang/String;)V

    .line 237
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    sget-boolean v1, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    sput-boolean v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    .line 241
    sget-boolean v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    sget-object v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :cond_2
    const-string v0, "show_all_quick_tips"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    return-void
.end method

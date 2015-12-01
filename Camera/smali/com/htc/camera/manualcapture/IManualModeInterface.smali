.class public interface abstract Lcom/htc/camera/manualcapture/IManualModeInterface;
.super Ljava/lang/Object;
.source "IManualModeInterface.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_MANUAL_COLOR_TEMP:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_MANUAL_EXPOSURE_COMP:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_MANUAL_FOCUS_STEP:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_MANUAL_ISO_SPEED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_MANUAL_SHUTTER_SPEED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SUPPORTED_COLOR_TEMPS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SUPPORTED_EXPOSURE_COMPS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SUPPORTED_FOCUS_STEPS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SUPPORTED_ISO_SPEEDS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SUPPORTED_SHUTTER_SPEEDS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "SupportedFocusSteps"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_FOCUS_STEPS:Lcom/htc/camera/base/PropertyKey;

    .line 14
    new-instance v6, Lcom/htc/camera/base/PropertyKey;

    const-string v7, "FocusStep"

    const-class v8, Lcom/htc/camera/Rational;

    const-class v9, Lcom/htc/camera/manualcapture/IManualModeInterface;

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_FOCUS_STEP:Lcom/htc/camera/base/PropertyKey;

    .line 17
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "SupportedShutterSpeeds"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_SHUTTER_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    .line 18
    new-instance v6, Lcom/htc/camera/base/PropertyKey;

    const-string v7, "ShutterSpeed"

    const-class v8, Lcom/htc/camera/Rational;

    const-class v9, Lcom/htc/camera/manualcapture/IManualModeInterface;

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_SHUTTER_SPEED:Lcom/htc/camera/base/PropertyKey;

    .line 21
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "SupportedISOSpeeds"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_ISO_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    .line 22
    new-instance v6, Lcom/htc/camera/base/PropertyKey;

    const-string v7, "ISOSpeed"

    const-class v8, Lcom/htc/camera/Rational;

    const-class v9, Lcom/htc/camera/manualcapture/IManualModeInterface;

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_ISO_SPEED:Lcom/htc/camera/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "SupportedExposureCompensations"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_EXPOSURE_COMPS:Lcom/htc/camera/base/PropertyKey;

    .line 26
    new-instance v6, Lcom/htc/camera/base/PropertyKey;

    const-string v7, "ExposureCompensation"

    const-class v8, Lcom/htc/camera/Rational;

    const-class v9, Lcom/htc/camera/manualcapture/IManualModeInterface;

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_EXPOSURE_COMP:Lcom/htc/camera/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "SupportedColorTemperature"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_COLOR_TEMPS:Lcom/htc/camera/base/PropertyKey;

    .line 30
    new-instance v6, Lcom/htc/camera/base/PropertyKey;

    const-string v7, "ColorTemperature"

    const-class v8, Lcom/htc/camera/Rational;

    const-class v9, Lcom/htc/camera/manualcapture/IManualModeInterface;

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_COLOR_TEMP:Lcom/htc/camera/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsManualModeEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract disableManualMode(I)V
.end method

.method public abstract enableManualMode(I)Z
.end method

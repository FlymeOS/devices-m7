.class public interface abstract Lcom/htc/camera/power/IBatteryWatcher;
.super Ljava/lang/Object;
.source "IBatteryWatcher.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final PROPERTY_BATTERY_LEVEL_PERCENTAGE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_LOW_BATTERY_LEVEL:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_LOW_BATTERY_TEMPERATURE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 14
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "BatteryLevelPercentage"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/htc/camera/power/IBatteryWatcher;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_BATTERY_LEVEL_PERCENTAGE:Lcom/htc/camera/base/PropertyKey;

    .line 18
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsLowBatteryTemperature"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/power/IBatteryWatcher;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_IS_LOW_BATTERY_TEMPERATURE:Lcom/htc/camera/base/PropertyKey;

    .line 22
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsLowBatteryLevel"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/power/IBatteryWatcher;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_IS_LOW_BATTERY_LEVEL:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method

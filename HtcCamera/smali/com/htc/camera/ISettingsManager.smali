.class public interface abstract Lcom/htc/camera/ISettingsManager;
.super Ljava/lang/Object;
.source "ISettingsManager.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final EVENT_SETTINGS_CHANGING:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/SettingsEventArgs",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "Settings"

    const-class v2, Lcom/htc/camera/CameraSettings;

    const-class v3, Lcom/htc/camera/ISettingsManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    .line 26
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "SettingsChanging"

    const-class v2, Lcom/htc/camera/SettingsEventArgs;

    const-class v3, Lcom/htc/camera/ISettingsManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/ISettingsManager;->EVENT_SETTINGS_CHANGING:Lcom/htc/camera/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract setSettings(Lcom/htc/camera/CameraSettings;I)Lcom/htc/camera/CloseableHandle;
.end method

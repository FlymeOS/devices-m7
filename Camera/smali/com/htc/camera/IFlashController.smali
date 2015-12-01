.class public interface abstract Lcom/htc/camera/IFlashController;
.super Ljava/lang/Object;
.source "IFlashController.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/SupportState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;
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
    .locals 5

    .prologue
    .line 11
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "FlashMode"

    const-class v2, Lcom/htc/camera/FlashMode;

    const-class v3, Lcom/htc/camera/IFlashController;

    sget-object v4, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    .line 12
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsFlashDisabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/IFlashController;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/IFlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    .line 13
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "FlashSupportState"

    const-class v2, Lcom/htc/camera/SupportState;

    const-class v3, Lcom/htc/camera/IFlashController;

    sget-object v4, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract disableFlash()Lcom/htc/camera/Handle;
.end method

.method public abstract enableFlash(Lcom/htc/camera/Handle;)V
.end method

.method public abstract nextFlashMode()Lcom/htc/camera/FlashMode;
.end method

.method public abstract restoreFlashProvider(Lcom/htc/camera/Handle;I)V
.end method

.method public abstract setFlashProvider(Lcom/htc/camera/FlashProvider;I)Lcom/htc/camera/Handle;
.end method

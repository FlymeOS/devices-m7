.class public interface abstract Lcom/htc/camera/ui/IVideoRecordingButton;
.super Ljava/lang/Object;
.source "IVideoRecordingButton.java"

# interfaces
.implements Lcom/htc/camera/base/c;


# static fields
.field public static final EVENT_PRESSED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_RELEASED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "Pressed"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/ui/IVideoRecordingButton;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/ui/IVideoRecordingButton;->EVENT_PRESSED:Lcom/htc/camera/base/EventKey;

    .line 19
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "Released"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/ui/IVideoRecordingButton;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/ui/IVideoRecordingButton;->EVENT_RELEASED:Lcom/htc/camera/base/EventKey;

    return-void
.end method

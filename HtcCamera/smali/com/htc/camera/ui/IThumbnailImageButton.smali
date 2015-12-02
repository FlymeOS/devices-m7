.class public interface abstract Lcom/htc/camera/ui/IThumbnailImageButton;
.super Ljava/lang/Object;
.source "IThumbnailImageButton.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final EVENT_BUTTON_CLICKED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ui/ThumbnailImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_BUTTON_ENABLED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_LAST_MEDIA_INFO:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "ButtonClicked"

    const-class v2, Lcom/htc/camera/ui/ThumbnailImageEventArgs;

    const-class v3, Lcom/htc/camera/ui/IThumbnailImageButton;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V

    sput-object v0, Lcom/htc/camera/ui/IThumbnailImageButton;->EVENT_BUTTON_CLICKED:Lcom/htc/camera/base/EventKey;

    .line 20
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsButtonEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/ui/IThumbnailImageButton;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ui/IThumbnailImageButton;->PROPERTY_IS_BUTTON_ENABLED:Lcom/htc/camera/base/PropertyKey;

    .line 24
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "LastMediaInfo"

    const-class v2, Lcom/htc/camera/media/MediaInfo;

    const-class v3, Lcom/htc/camera/ui/IThumbnailImageButton;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ui/IThumbnailImageButton;->PROPERTY_LAST_MEDIA_INFO:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method

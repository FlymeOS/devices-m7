.class Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;
.super Lcom/htc/camera/menu/RadioButtonMenuItem;
.source "PhotoSizeModeMenuItem.java"


# instance fields
.field public final photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

.field public final photoSizeModeDescription:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/camera/menu/PhotoSizeModeMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/menu/PhotoSizeModeMenuItem;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/PhotoSizeMode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->this$0:Lcom/htc/camera/menu/PhotoSizeModeMenuItem;

    .line 42
    invoke-direct {p0, p2, p4}, Lcom/htc/camera/menu/RadioButtonMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 43
    iput-object p3, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    .line 44
    iput-object p4, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeModeDescription:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->this$0:Lcom/htc/camera/menu/PhotoSizeModeMenuItem;

    # invokes: Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->onPhotoSizeSelected(Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;)V
    invoke-static {v0, p0}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->access$000(Lcom/htc/camera/menu/PhotoSizeModeMenuItem;Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;)V

    .line 54
    const/4 v0, 0x0

    return v0
.end method

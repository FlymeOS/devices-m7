.class Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;
.super Lcom/htc/camera/menu/RadioButtonMenuItem;
.source "CameraIsoMenuItem.java"


# instance fields
.field public final isoDescription:Ljava/lang/String;

.field public final isoValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/camera/menu/CameraIsoMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/menu/CameraIsoMenuItem;Lcom/htc/camera/HTCCamera;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->this$0:Lcom/htc/camera/menu/CameraIsoMenuItem;

    .line 48
    invoke-direct {p0, p2, p4}, Lcom/htc/camera/menu/RadioButtonMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 49
    iput-object p3, p0, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoDescription:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->this$0:Lcom/htc/camera/menu/CameraIsoMenuItem;

    # invokes: Lcom/htc/camera/menu/CameraIsoMenuItem;->onIsoSelected(Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;)V
    invoke-static {v0, p0}, Lcom/htc/camera/menu/CameraIsoMenuItem;->access$000(Lcom/htc/camera/menu/CameraIsoMenuItem;Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method

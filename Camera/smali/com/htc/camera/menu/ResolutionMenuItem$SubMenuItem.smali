.class Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;
.super Lcom/htc/camera/menu/RadioButtonMenuItem;
.source "ResolutionMenuItem.java"


# instance fields
.field public final resolution:Lcom/htc/camera/Resolution;

.field final synthetic this$0:Lcom/htc/camera/menu/ResolutionMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Resolution;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

    .line 49
    invoke-virtual {p3, p2}, Lcom/htc/camera/Resolution;->getResolutionDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/htc/camera/menu/RadioButtonMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/htc/camera/Resolution;

    .line 51
    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

    # invokes: Lcom/htc/camera/menu/ResolutionMenuItem;->onResolutionSelected(Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    invoke-static {v0, p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->access$000(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method

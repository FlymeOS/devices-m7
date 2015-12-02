.class Lcom/htc/camera/component/ThumbnailUI$3;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$3;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$3;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->onThumbnailButtonClicked()V
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$900(Lcom/htc/camera/component/ThumbnailUI;)V

    .line 363
    return-void
.end method

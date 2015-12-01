.class Lcom/htc/camera/component/BubbleToastManager$ToastHandle;
.super Lcom/htc/camera/Handle;
.source "BubbleToastManager.java"


# instance fields
.field public final content:Landroid/view/View;

.field public flags:I

.field public priority:Lcom/htc/camera/BubbleToastPriority;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/htc/camera/BubbleToastPriority;I)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "BubbleToast"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->flags:I

    .line 68
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->content:Landroid/view/View;

    .line 69
    iput-object p2, p0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->priority:Lcom/htc/camera/BubbleToastPriority;

    .line 70
    iput p3, p0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->flags:I

    .line 71
    return-void
.end method

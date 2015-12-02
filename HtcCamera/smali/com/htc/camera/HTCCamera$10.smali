.class Lcom/htc/camera/HTCCamera$10;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$10;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1169
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$10;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$2200(Lcom/htc/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1171
    if-le p5, p4, :cond_1

    .line 1173
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 1174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    if-ge p5, p4, :cond_0

    .line 1178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

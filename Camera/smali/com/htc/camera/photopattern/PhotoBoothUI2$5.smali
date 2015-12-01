.class Lcom/htc/camera/photopattern/PhotoBoothUI2$5;
.super Ljava/lang/Object;
.source "PhotoBoothUI2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$5;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$5;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$5;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 689
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$5;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    return-void
.end method

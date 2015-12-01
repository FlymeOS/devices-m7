.class Lcom/htc/camera/widget/ImagePropertyItem$4;
.super Ljava/lang/Object;
.source "ImagePropertyItem.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ImagePropertyItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ImagePropertyItem;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/htc/camera/widget/ImagePropertyItem$4;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem$4;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    # setter for: Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I
    invoke-static {v0, p2}, Lcom/htc/camera/widget/ImagePropertyItem;->access$402(Lcom/htc/camera/widget/ImagePropertyItem;I)I

    .line 252
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem$4;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ImagePropertyItem;->onLevelChanged()V

    .line 243
    return-void
.end method

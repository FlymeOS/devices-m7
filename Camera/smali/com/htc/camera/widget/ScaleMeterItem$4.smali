.class Lcom/htc/camera/widget/ScaleMeterItem$4;
.super Ljava/lang/Object;
.source "ScaleMeterItem.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ScaleMeterItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ScaleMeterItem;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/camera/widget/ScaleMeterItem$4;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem$4;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    # setter for: Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I
    invoke-static {v0, p2}, Lcom/htc/camera/widget/ScaleMeterItem;->access$402(Lcom/htc/camera/widget/ScaleMeterItem;I)I

    .line 186
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem$4;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ScaleMeterItem;->onLevelChanged()V

    .line 177
    return-void
.end method

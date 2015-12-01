.class Lcom/htc/camera/component/SeekBarUI$2;
.super Ljava/lang/Object;
.source "SeekBarUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SeekBarUI;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SeekBarUI;I)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/camera/component/SeekBarUI$2;->this$0:Lcom/htc/camera/component/SeekBarUI;

    iput p2, p0, Lcom/htc/camera/component/SeekBarUI$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$2;->this$0:Lcom/htc/camera/component/SeekBarUI;

    iget v1, p0, Lcom/htc/camera/component/SeekBarUI$2;->val$index:I

    invoke-virtual {v0, v1, p2}, Lcom/htc/camera/component/SeekBarUI;->onSeekBarProgressChanged(II)V

    .line 151
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

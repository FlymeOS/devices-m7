.class Lcom/htc/camera/component/RotateDialogManager$4;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RotateDialogManager;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic val$handle:Lcom/htc/camera/SessionHandle;

.field final synthetic val$useDefaultKeyListener:Z

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/SessionHandle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$4;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iput-object p2, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$handle:Lcom/htc/camera/SessionHandle;

    iput-object p3, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$dialog:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-boolean p5, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$useDefaultKeyListener:Z

    iput p6, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$4;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$handle:Lcom/htc/camera/SessionHandle;

    iget-object v2, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$dialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-boolean v4, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$useDefaultKeyListener:Z

    iget v5, p0, Lcom/htc/camera/component/RotateDialogManager$4;->val$width:I

    # invokes: Lcom/htc/camera/component/RotateDialogManager;->showDialog(Lcom/htc/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/component/RotateDialogManager;->access$400(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V

    .line 258
    return-void
.end method

.class Lcom/htc/camera/component/RotateDialogManager$6;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RotateDialogManager;

.field final synthetic val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RotateDialogManager;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iput-object p2, p0, Lcom/htc/camera/component/RotateDialogManager$6;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    sget-object v1, Lcom/htc/camera/component/IComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/RotateDialogManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

    if-ne v0, v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$500(Lcom/htc/camera/component/RotateDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # setter for: Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0, v2}, Lcom/htc/camera/component/RotateDialogManager;->access$502(Lcom/htc/camera/component/RotateDialogManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 346
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # setter for: Lcom/htc/camera/component/RotateDialogManager;->m_DialogView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/htc/camera/component/RotateDialogManager;->access$602(Lcom/htc/camera/component/RotateDialogManager;Landroid/view/View;)Landroid/view/View;

    .line 347
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # setter for: Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v2}, Lcom/htc/camera/component/RotateDialogManager;->access$102(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 348
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # setter for: Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;
    invoke-static {v0, v2}, Lcom/htc/camera/component/RotateDialogManager;->access$302(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/component/RotateDialogManager$DialogContainer;)Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    .line 349
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iget-object v0, v0, Lcom/htc/camera/component/RotateDialogManager;->hasDialog:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iget-object v1, v1, Lcom/htc/camera/component/RotateDialogManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$6;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_DialogDismissListener:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$700(Lcom/htc/camera/component/RotateDialogManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

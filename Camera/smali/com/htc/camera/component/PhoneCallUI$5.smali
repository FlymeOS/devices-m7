.class Lcom/htc/camera/component/PhoneCallUI$5;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$5;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$5;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # invokes: Lcom/htc/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$100(Lcom/htc/camera/component/PhoneCallUI;)V

    .line 477
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$5;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # invokes: Lcom/htc/camera/component/PhoneCallUI;->endCall()V
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$2700(Lcom/htc/camera/component/PhoneCallUI;)V

    .line 478
    return-void
.end method

.class Lcom/htc/camera/actionscreen/CommonActionScreen$7;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$7;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$7;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # setter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$502(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 167
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$7;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # setter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$602(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

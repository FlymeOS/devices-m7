.class Lcom/htc/camera/actionscreen/CommonActionScreen$6;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$6;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$6;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$502(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 160
    return-void
.end method

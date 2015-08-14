.class Lcom/android/nfc/handover/ConfirmSaveActivity$2;
.super Ljava/lang/Object;
.source "ConfirmSaveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/ConfirmSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/ConfirmSaveActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$2;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$2;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/nfc/handover/ConfirmSaveActivity;->onUserClick(Z)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$400(Lcom/android/nfc/handover/ConfirmSaveActivity;Z)V

    .line 130
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$2;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    invoke-virtual {v0}, Lcom/android/nfc/handover/ConfirmSaveActivity;->finish()V

    .line 131
    return-void
.end method

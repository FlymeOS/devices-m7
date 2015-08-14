.class Lcom/android/nfc/NfcService$ToastHandler$2;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$ToastHandler;->showToast(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$ToastHandler;

.field final synthetic val$_duration:I

.field final synthetic val$_text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$ToastHandler;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 4279
    iput-object p1, p0, Lcom/android/nfc/NfcService$ToastHandler$2;->this$1:Lcom/android/nfc/NfcService$ToastHandler;

    iput-object p2, p0, Lcom/android/nfc/NfcService$ToastHandler$2;->val$_text:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/nfc/NfcService$ToastHandler$2;->val$_duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4283
    iget-object v0, p0, Lcom/android/nfc/NfcService$ToastHandler$2;->this$1:Lcom/android/nfc/NfcService$ToastHandler;

    # getter for: Lcom/android/nfc/NfcService$ToastHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/nfc/NfcService$ToastHandler;->access$3400(Lcom/android/nfc/NfcService$ToastHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$ToastHandler$2;->val$_text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/nfc/NfcService$ToastHandler$2;->val$_duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4284
    return-void
.end method

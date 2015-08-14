.class Lcom/android/nfc/NfcService$4;
.super Landroid/telephony/PhoneStateListener;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 5835
    iput-object p1, p0, Lcom/android/nfc/NfcService$4;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 5838
    iget-object v0, p0, Lcom/android/nfc/NfcService$4;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->updateNfcState(I)V
    invoke-static {v0, p1}, Lcom/android/nfc/NfcService;->access$5200(Lcom/android/nfc/NfcService;I)V

    .line 5839
    return-void
.end method

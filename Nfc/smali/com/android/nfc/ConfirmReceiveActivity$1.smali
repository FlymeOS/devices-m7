.class Lcom/android/nfc/ConfirmReceiveActivity$1;
.super Ljava/lang/Object;
.source "ConfirmReceiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmReceiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmReceiveActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmReceiveActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/nfc/ConfirmReceiveActivity$1;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/nfc/ConfirmReceiveActivity$1;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    invoke-virtual {v0}, Lcom/android/nfc/ConfirmReceiveActivity;->finish()V

    .line 69
    return-void
.end method

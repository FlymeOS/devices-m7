.class Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;
.super Lcom/htc/app/HtcProgressDialog;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoInputProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 7364
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 7365
    invoke-direct {p0, p2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 7366
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 7370
    invoke-super {p0, p1}, Lcom/htc/app/HtcProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 7374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7375
    return-void
.end method

.class Lcom/android/nfc/SendUi$1;
.super Landroid/os/HandlerThread;
.source "SendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/SendUi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/SendUi;


# direct methods
.method constructor <init>(Lcom/android/nfc/SendUi;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/nfc/SendUi$1;->this$0:Lcom/android/nfc/SendUi;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/nfc/SendUi$1;->this$0:Lcom/android/nfc/SendUi;

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    return-void
.end method

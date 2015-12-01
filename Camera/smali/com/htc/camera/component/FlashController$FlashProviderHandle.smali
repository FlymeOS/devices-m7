.class Lcom/htc/camera/component/FlashController$FlashProviderHandle;
.super Lcom/htc/camera/Handle;
.source "FlashController.java"


# instance fields
.field public flags:I

.field public final flashProvider:Lcom/htc/camera/FlashProvider;


# direct methods
.method public constructor <init>(Lcom/htc/camera/FlashProvider;I)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "FlashProvider"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    .line 73
    iput p2, p0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flags:I

    .line 74
    return-void
.end method

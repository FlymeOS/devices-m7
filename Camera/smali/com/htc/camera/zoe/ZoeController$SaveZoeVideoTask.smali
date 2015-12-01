.class final Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;
.super Lcom/htc/camera/io/SaveVideoTask;
.source "ZoeController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->this$0:Lcom/htc/camera/zoe/ZoeController;

    .line 301
    invoke-direct {p0, p2}, Lcom/htc/camera/io/SaveVideoTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 302
    return-void
.end method


# virtual methods
.method protected prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    const-string v1, "htc_type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    return-object v0
.end method

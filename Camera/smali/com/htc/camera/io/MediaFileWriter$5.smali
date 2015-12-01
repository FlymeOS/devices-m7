.class Lcom/htc/camera/io/MediaFileWriter$5;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/MediaFileWriter;

.field final synthetic val$storageSlot:Lcom/htc/camera/io/StorageSlot;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$5;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    iput-object p2, p0, Lcom/htc/camera/io/MediaFileWriter$5;->val$storageSlot:Lcom/htc/camera/io/StorageSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$5;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter$5;->val$storageSlot:Lcom/htc/camera/io/StorageSlot;

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->prepareInternal(Lcom/htc/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/htc/camera/io/MediaFileWriter;->access$900(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/StorageSlot;)V

    .line 368
    return-void
.end method

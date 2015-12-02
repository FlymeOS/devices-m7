.class Lcom/htc/camera/CameraApplication$3;
.super Landroid/os/AsyncTask;
.source "CameraApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraApplication;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraApplication;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/camera/CameraApplication$3;->this$0:Lcom/htc/camera/CameraApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/camera/CameraApplication$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/camera/CameraApplication$3;->this$0:Lcom/htc/camera/CameraApplication;

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared_prefs"

    invoke-static {v0, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    const-string v1, "com.android.camera_preferences.xml"

    invoke-static {v0, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v1, "CameraApplication"

    const-string v2, "migrateFromSense55() - Delete old preference file \'"

    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->deleteFile(Ljava/lang/String;)Z

    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

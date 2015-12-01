.class Lcom/htc/lib1/hfmclient/HfmDownloadClient$3;
.super Ljava/lang/Object;
.source "HfmDownloadClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/lib1/hfmclient/HfmDownloadClient;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$3;->this$0:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    iput-object p2, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$3;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 277
    return-void
.end method

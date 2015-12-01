.class Lcom/htc/lib1/hfmclient/HfmDownloadClient$2;
.super Ljava/lang/Object;
.source "HfmDownloadClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

.field final synthetic val$negative:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/htc/lib1/hfmclient/HfmDownloadClient;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    iput-object p2, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$2;->val$negative:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$2;->val$negative:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$2;->val$negative:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

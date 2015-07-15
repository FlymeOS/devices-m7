.class public Lcom/htc/app/admin/EdmCertUtil;
.super Ljava/lang/Object;
.source "EdmCertUtil.java"


# static fields
.field static final CERT_NAME_KEY:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "EdmCertUtil"

.field private static mIsCertValid:Z


# instance fields
.field private mCertName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/admin/EdmCertUtil;->mCertName:Ljava/lang/String;

    .line 26
    const/4 v4, 0x0

    sput-boolean v4, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    .line 27
    iput-object p1, p0, Lcom/htc/app/admin/EdmCertUtil;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p2}, Lcom/htc/app/admin/EdmCertUtil;->isEdmCertIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/htc/app/admin/EdmCertUtil;->getDPM()Landroid/app/admin/DevicePolicyManager;

    .line 32
    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 34
    iput-object v3, p0, Lcom/htc/app/admin/EdmCertUtil;->mCertName:Ljava/lang/String;

    .line 35
    const-string v4, "EdmCertUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EdmCertIntent initialized:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v4, 0x1

    sput-boolean v4, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    .line 47
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 39
    :cond_1
    const-string v4, "EdmCertUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a EdmCertIntent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    .local v2, "key":Ljava/lang/String;
    const-string v4, "EdmCertUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   Key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/admin/EdmCertUtil;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 57
    const-string v1, "EdmCertUtil"

    const-string v2, "Cannot get DevicePolicyManager!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEdmCertIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 66
    const-string v1, "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    .local v0, "isEdmCert":Z
    if-eqz v0, :cond_0

    .line 71
    const-string v1, "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 75
    :cond_0
    return v0
.end method

.method public static isValid()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    return v0
.end method


# virtual methods
.method public done()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/admin/EdmCertUtil;->mIsCertValid:Z

    .line 110
    return-void
.end method

.method public getCertName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/app/admin/EdmCertUtil;->mCertName:Ljava/lang/String;

    return-object v0
.end method

.method public prepareEdmCertIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 105
    const-string v0, "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public responseStatus(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/app/admin/EdmCertUtil;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 91
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/admin/DevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/app/admin/EdmCertUtil;->done()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v1, "EdmCertUtil"

    const-string v2, "Cannot response!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public responseSuccess()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/app/admin/EdmCertUtil;->responseStatus(I)V

    .line 102
    return-void
.end method

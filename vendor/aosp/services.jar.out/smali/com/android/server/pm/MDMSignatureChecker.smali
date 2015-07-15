.class public Lcom/android/server/pm/MDMSignatureChecker;
.super Ljava/lang/Object;
.source "MDMSignatureChecker.java"


# instance fields
.field private MDMPublicKey:[B

.field private final TAG:Ljava/lang/String;

.field private keyid:I

.field private keytag:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v1, "MDMSignatureChecker"

    iput-object v1, p0, Lcom/android/server/pm/MDMSignatureChecker;->TAG:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/android/server/pm/MDMSignatureChecker;->keytag:I

    .line 82
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/MDMSignatureChecker;->mContext:Landroid/content/Context;

    .line 83
    const-string v1, "ro.htc.mdm.keyname"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/MDMSignatureChecker;->keytag:I

    .line 84
    iget-object v1, p0, Lcom/android/server/pm/MDMSignatureChecker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/pm/MDMSignatureChecker;->initkey(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MDMSignatureChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init fail with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private comparePublicKey([B)Z
    .locals 3
    .param p1, "blob"    # [B

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/pm/MDMSignatureChecker;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 73
    .local v0, "blobKey":Ljava/security/PublicKey;
    iget-object v1, p0, Lcom/android/server/pm/MDMSignatureChecker;->MDMPublicKey:[B

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    const-string v1, "MDMSignatureChecker"

    const-string v2, "MDMPublicKey or input is null return false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/MDMSignatureChecker;->MDMPublicKey:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .locals 6
    .param p1, "blob"    # [B

    .prologue
    .line 60
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 61
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 63
    .local v2, "x509Cert":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 68
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "x509Cert":Ljava/security/cert/Certificate;
    :goto_0
    return-object v3

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v3, "MDMSignatureChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate parsing exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initkey(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 31
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 32
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 34
    .local v2, "publickey":Ljava/lang/String;
    const v5, 0x308003e

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 35
    iget v5, p0, Lcom/android/server/pm/MDMSignatureChecker;->keytag:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/MDMSignatureChecker;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    .line 48
    .local v1, "key":Ljava/security/PublicKey;
    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/MDMSignatureChecker;->MDMPublicKey:[B

    .line 53
    :goto_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .end local v1    # "key":Ljava/security/PublicKey;
    :goto_1
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "MDMSignatureChecker"

    const-string v6, "Failed to obtain TypedArray for MDM, id:50855998"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 51
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "key":Ljava/security/PublicKey;
    :cond_0
    const-string v5, "MDMSignatureChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractPublicKey return null, cert="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkSignature(Landroid/content/pm/Signature;)Z
    .locals 5
    .param p1, "signature"    # Landroid/content/pm/Signature;

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/MDMSignatureChecker;->MDMPublicKey:[B

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/MDMSignatureChecker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/pm/MDMSignatureChecker;->initkey(Landroid/content/Context;)V

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/MDMSignatureChecker;->comparePublicKey([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "MDMSignatureChecker"

    const-string v3, "Signature matches"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v1, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MDMSignatureChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to verify package public key against MDM pub key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkSignatures([Landroid/content/pm/Signature;)Z
    .locals 6
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 108
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/MDMSignatureChecker;->checkSignature(Landroid/content/pm/Signature;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

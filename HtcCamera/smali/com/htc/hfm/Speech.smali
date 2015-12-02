.class public Lcom/htc/hfm/Speech;
.super Ljava/lang/Object;
.source "Speech.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/hfm/Speech;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private file:Ljava/lang/String;

.field private mAudio:[B

.field private mAudioResId:I

.field private mAudioType:I

.field private mSpeechType:I

.field private mText:Ljava/lang/String;

.field private mTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/htc/hfm/Speech;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/htc/hfm/a;

    invoke-direct {v0}, Lcom/htc/hfm/a;-><init>()V

    sput-object v0, Lcom/htc/hfm/Speech;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/hfm/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/hfm/Speech;-><init>()V

    return-void
.end method

.method private convertAudioFile(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/etc/.speak/languages/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_prompt/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/hfm/Speech;->file:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/.speak/languages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_prompt/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/hfm/Speech;->file:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    :goto_0
    sget-object v1, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 427
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 432
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 434
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 446
    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 451
    :cond_0
    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 456
    :cond_1
    :goto_3
    return-void

    .line 406
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 407
    goto :goto_0

    .line 412
    :cond_3
    sget-object v0, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    const-string v1, "Both paths do not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 430
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mAudio:[B
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 446
    if-eqz v1, :cond_5

    .line 448
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 451
    :cond_5
    if-eqz v3, :cond_1

    .line 453
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3

    .line 436
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 438
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 446
    if-eqz v1, :cond_6

    .line 448
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 451
    :cond_6
    if-eqz v3, :cond_1

    .line 453
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3

    .line 440
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 442
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 446
    if-eqz v1, :cond_7

    .line 448
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 451
    :cond_7
    if-eqz v3, :cond_1

    .line 453
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3

    .line 446
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    if-eqz v1, :cond_8

    .line 448
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 451
    :cond_8
    if-eqz v3, :cond_9

    .line 453
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_9
    throw v0

    .line 446
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 440
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    .line 436
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_4

    .line 432
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private convertAudioResource(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 365
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 366
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/htc/hfm/Speech;->mAudioResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 368
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 369
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 372
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 373
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    .line 374
    return-void
.end method

.method private convertTextResource(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/htc/hfm/Speech;->mTextResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public static createSpeechFromText(Ljava/lang/String;)Lcom/htc/hfm/Speech;
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x2bd

    invoke-static {p0, v0}, Lcom/htc/hfm/Speech;->createSpeechFromText(Ljava/lang/String;I)Lcom/htc/hfm/Speech;

    move-result-object v0

    return-object v0
.end method

.method private static createSpeechFromText(Ljava/lang/String;I)Lcom/htc/hfm/Speech;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/htc/hfm/Speech;

    invoke-direct {v0}, Lcom/htc/hfm/Speech;-><init>()V

    .line 210
    iput p1, v0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 211
    iput-object p0, v0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    .line 212
    return-object v0
.end method

.method private getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htcspeak_used_lang"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htcspeak_default_lang"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_0
    if-nez v0, :cond_1

    .line 464
    const-string v0, "en_US"

    .line 466
    :cond_1
    sget-object v1, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v0
.end method

.method private getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 389
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 390
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 391
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-direct {p0, v3}, Lcom/htc/hfm/Speech;->languageToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 393
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v1, v2, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 394
    return-object v3
.end method

.method private insertSpaceBetweenDigits()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 482
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 484
    iget-object v2, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 485
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 486
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 490
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method private languageToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 471
    const-string v0, "zh_TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 476
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const-string v0, "zh_CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_0

    .line 476
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public convert(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    packed-switch v0, :pswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 348
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->convertAudioResource(Landroid/content/Context;)V

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->convertTextResource(Landroid/content/Context;)V

    goto :goto_0

    .line 354
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->convertAudioFile(Landroid/content/Context;)V

    goto :goto_0

    .line 357
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/hfm/Speech;->insertSpaceBetweenDigits()V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x2be
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getSpeechType()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mAudioType:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mTextResId:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mAudioResId:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->file:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Lcom/htc/hfm/Speech;->mAudioType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 272
    iget v0, p0, Lcom/htc/hfm/Speech;->mTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Lcom/htc/hfm/Speech;->mAudioResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v0, p0, Lcom/htc/hfm/Speech;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    return-void
.end method

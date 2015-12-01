.class public Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public grayOut:Ljava/lang/Boolean;

.field public hide:Ljava/lang/Boolean;

.field public value:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/d;

    invoke-direct {v0}, Lcom/htc/lib3/phonecontacts/telephony/d;-><init>()V

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    if-eqz p1, :cond_0

    .line 254
    instance-of v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 255
    check-cast v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    iget-object v0, v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    move-object v0, p1

    .line 256
    check-cast v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    iget-object v0, v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 257
    check-cast p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    instance-of v0, p1, Landroid/os/Parcel;

    if-eqz v0, :cond_2

    .line 260
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/io/CharArrayReader;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-static {v1, p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    goto :goto_0

    .line 267
    :cond_2
    :try_start_0
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 270
    :goto_1
    :try_start_1
    const-string v0, "grayOut"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :goto_2
    :try_start_2
    const-string v0, "hide"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    goto :goto_2

    .line 268
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$400(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V
    .locals 0

    .prologue
    .line 242
    invoke-static {p0, p1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V

    return-void
.end method

.method static synthetic access$500(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    .locals 1

    .prologue
    .line 242
    invoke-static {p0, p1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    move-result-object v0

    return-object v0
.end method

.method private static constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    .locals 3

    .prologue
    const/16 v2, 0x5f

    .line 363
    .line 364
    if-eqz p0, :cond_2

    .line 367
    :try_start_0
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->read()I

    move-result v0

    move v1, v0

    .line 370
    :goto_0
    if-eq v1, v2, :cond_2

    .line 371
    if-nez p1, :cond_0

    .line 372
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    invoke-direct {v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;-><init>()V

    move-object p1, v0

    .line 374
    :cond_0
    invoke-static {v1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    .line 375
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->read()I

    move-result v0

    invoke-static {v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 378
    :cond_1
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->read()I

    move-result v0

    invoke-static {v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_2
    :goto_1
    return-object p1

    .line 382
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private static fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V
    .locals 1

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Boolean;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    .line 349
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Boolean;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    .line 350
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Boolean;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 331
    invoke-static {v0, p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V

    .line 332
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    :cond_0
    return-void
.end method

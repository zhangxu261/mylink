.class public final enum Lcom/autonavi/xm/tts/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/autonavi/xm/tts/a;

.field public static final enum b:Lcom/autonavi/xm/tts/a;

.field public static final enum c:Lcom/autonavi/xm/tts/a;

.field private static final synthetic e:[Lcom/autonavi/xm/tts/a;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/tts/a;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/xm/tts/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/tts/a;->a:Lcom/autonavi/xm/tts/a;

    new-instance v0, Lcom/autonavi/xm/tts/a;

    const-string v1, "CHINESE"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/xm/tts/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/tts/a;->b:Lcom/autonavi/xm/tts/a;

    new-instance v0, Lcom/autonavi/xm/tts/a;

    const-string v1, "ENGLISH"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/xm/tts/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/tts/a;->c:Lcom/autonavi/xm/tts/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/tts/a;

    sget-object v1, Lcom/autonavi/xm/tts/a;->a:Lcom/autonavi/xm/tts/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/tts/a;->b:Lcom/autonavi/xm/tts/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/tts/a;->c:Lcom/autonavi/xm/tts/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/tts/a;->e:[Lcom/autonavi/xm/tts/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/tts/a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/tts/a;
    .locals 1

    const-class v0, Lcom/autonavi/xm/tts/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/tts/a;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/tts/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/autonavi/xm/tts/a;->e:[Lcom/autonavi/xm/tts/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/autonavi/xm/tts/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

# Cryptology In Theory: Studying cryptography and cryptanalysis

## General

- **Hashing**: \[*Integrity*\] Useful for generating a checksum to
  comparing if data has been changed/modified. SHA-256.

- **Encrypting**: \[*Security/Confidentiality*\] Keeping a file secure
  with a password – usually using AES-256 algorithm

- **Generating Keys**: \[*Sending*\] Useful for sending file(s) in a
  secure manner. RSA.

The topic of **cryptography**, or hiding messages from potential
enemies, has been around for thousands of years. It's evolved
tremendously with the advent of modern technology, computers and
telecommunications.

**Encryption** is the act of taking a message, called plaintext, and
applying an operation to it, called a cipher. So that you receive a
garbled, unreadable message as the output, called ciphertext. We already
defined encryption, but the overarching discipline that covers the
practice of coding and hiding messages from third parties is called
cryptography. The study of this practice is referred to as cryptology.
The opposite of this looking for hidden messages or trying to decipher
coded message is referred to as cryptanalysis. These two fields have
co-evolved throughout history with new ciphers and cryptosystems being
developed as previous ones were broken or found to vulnerable.

The reverse process, taking the garbled output and transforming it back
into the readable plain text is called **decryption**. A cipher is
actually made up of two components, the **encryption algorithm** and the
**key**. The encryption algorithm is the underlying logic or process
that's used to convert the plaintext into ciphertext.

Just wait, given that the underlying purpose of cryptography is to
protect your secrets from being read by unauthorized parties, it would
make sense that at least some of the components of a cipher would need
to be kept secret too, right? You can keep the argument that by keeping
the algorithm secret, your messages are secured from a snooping third
party, and technically you wouldn't be wrong. This general concept is
referred to as, **security through obscurity**, which basically means,
<u>if no one knows what algorithm were using or general security
practice, then we're safe from attackers.</u> Think of hiding your house
key under you doormat, as long as the burglar doesn't know that you hide
the spare key under the mat, you're safe. But once that information is
discovered, all security goes out the window along with your valuables.
So clearly, security through obscurity isn't something that you should
rely on for securing communication or systems, or for your house for
that matter. This overall concept of cryptography is referred to as
**Kerckhoff's principle**. This principle states that <u>a cryptosystem,
or a collection of algorithms for key generation and encryption and
decryption operations that comprise a cryptographic service should
remain secure, even if everything about the system is known except for
the key</u>. What this means is that even if your enemy knows the exact
encryption algorithm you use to secure your data, they're still unable
to recover the plaintext from an intercepted ciphertext. You may also
hear this principle referred to as **Shannon's maxim** or the **enemy
knows the system**. The implications are the same.

**Frequency analysis** is the practice of studying the frequency with
which letters appear in ciphertext. The premise behind this type of
analysis is that in written languages, certain letters appear more
frequently than others, and some letters are more commonly grouped
together than others. For example, the most commonly used letters in the
English language are e, t, a, and o. The most commonly seen pairs of
these letters are th, er, on, and an. Some ciphers, especially
**classical transposition** (character shifting) and **substitution
ciphers** (character mapping) preserve the relative frequency of letters
in the plaintext and so are potentially vulnerable to this type of
analysis.

**Steganography** is a related practice but distinctly different from
cryptography. It's the practice of hiding information from observers,
but not encoding it. Think of writing a message using invisible ink. The
message is in plaintext and no decoding is necessary to read the text
but the text is hidden from sight. The ink is invisible and must be made
visible using a mechanism known to the recipient.

**<u>Cryptography and Cryptanalysis</u>**

- **Cryptography**: Study of making codes.

- **Cryptanalysis**: Study of breaking codes.

<img src="./media/image1.png" style="width:3.45536in;height:3.65014in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image2.png" style="width:6.5in;height:2.67431in"
alt="Chart Description automatically generated with medium confidence" />

## Tokenization

<img src="./media/image3.png" style="width:6.5in;height:3.47986in"
alt="Diagram Description automatically generated" />

## Steganography

The process of hiding a message within some other form of information.
This is not a form of encryption (as the payload isn’t encrypted)
rather, this is a form of **obfuscation** where the payload is hidden
and knowledge of how and where to look will lead to the plaintext
payload.

## Encryption

### Symmetric and asymmetric encryption

Previously, you learned these terms: 

- **Encryption**: the process of converting data from a readable format
  to an encoded format

- **Public key infrastructure** (PKI):  an encryption framework that
  secures the exchange of online information

- **Cipher**: an algorithm that encrypts information

All digital information deserves to be kept private, safe, and secure.
Encryption is one key to doing that! It is useful for transforming
information into a form that unintended recipients cannot understand. In
this reading, you’ll compare symmetric and asymmetric encryption and
learn about some well-known algorithms for each.

#### Types of encryption

There are two main types of encryption:

- **Symmetric encryption** is the use of a single secret key to exchange
  information. Because it uses one key for encryption and decryption,
  the sender and receiver must know the secret key to lock or unlock the
  cipher.

- **Asymmetric encryption** is the use of a public and private key pair
  for encryption and decryption of data. It uses two separate keys: a
  public key and a private key. The public key is used to encrypt data,
  and the private key decrypts it. The private key is only given to
  users with authorized access.

#### The importance of key length

Ciphers are vulnerable to **brute force attacks**, which use a trial and
error process to discover private information. This tactic is the
digital equivalent of trying every number in a combination lock trying
to find the right one. In modern encryption, longer key lengths are
considered to be more secure. Longer key lengths mean more possibilities
that an attacker needs to try to unlock a cipher.

One drawback to having long encryption keys is slower processing times.
Although short key lengths are generally less secure, they’re much
faster to compute. Providing fast data communication online while
keeping information safe is a delicate balancing act. 

#### Approved algorithms

Many web applications use a combination of symmetric and asymmetric
encryption. This is how they balance user experience with safeguarding
information. As an analyst, you should be aware of the most widely-used
algorithms.

##### **Symmetric algorithms**

- *Triple DES (3DES)* is known as a block cipher because of the way it
  converts plaintext into ciphertext in “blocks.” Its origins trace back
  to the Data Encryption Standard (DES), which was developed in the
  early 1970s. DES was one of the earliest symmetric encryption
  algorithms that generated 64-bit keys. A **bit** is the smallest unit
  of data measurement on a computer. As you might imagine, Triple DES
  generates keys that are 192 bits, or three times as long. Despite the
  longer keys, many organizations are moving away from using Triple DES
  due to limitations on the amount of data that can be encrypted.
  However, Triple DES is likely to remain in use for backwards
  compatibility purposes.   

- *Advanced Encryption Standard (AES)* is one of the most secure
  symmetric algorithms today. AES generates keys that are 128, 192, or
  256 bits. Cryptographic keys of this size are considered to be safe
  from brute force attacks. It’s estimated that brute forcing an AES
  128-bit key could take a modern computer billions of years!

##### **Asymmetric algorithms**

- *Rivest Shamir Adleman (RSA)* is named after its three creators who
  developed it while at the Massachusetts Institute of Technology (MIT).
  RSA is one of the first asymmetric encryption algorithms that produces
  a public and private key pair. Asymmetric algorithms like RSA produce
  even longer key lengths. In part, this is due to the fact that these
  functions are creating two keys. RSA key sizes are 1,024, 2,048, or
  4,096 bits. RSA is mainly used to protect highly sensitive data.

- *Digital Signature Algorithm (DSA)* is a standard asymmetric algorithm
  that was introduced by NIST in the early 1990s. DSA also generates key
  lengths of 2,048 bits. This algorithm is widely used today as a
  complement to RSA in public key infrastructure.

##### **Generating keys**

These algorithms must be implemented when an organization chooses one to
protect their data. One way this is done is using OpenSSL, which is an
open-source command line tool that can be used to generate public and
private keys. OpenSSL is commonly used by computers to verify digital
certificates that are exchanged as part of public key infrastructure.

**Note:** OpenSSL is just one option. There are various others available
that can generate keys with any of these common algorithms. 

Although many businesses use OpenSSL, it is no longer recommended since
the discovery of the  [Heartbleed
bug](https://en.wikipedia.org/wiki/Heartbleed) in 2014.

#### Obscurity is not security

In the world of cryptography, a cipher must be proven to be unbreakable
before claiming that it is secure. According to [Kerchoff’s
principle](https://en.wikipedia.org/wiki/Kerckhoffs%27s_principle),
cryptography should be designed in such a way that all the details of an
algorithm—except for the private key—should be knowable without
sacrificing its security. For example, you can access all the details
about how AES encryption works online and yet it is still unbreakable.

Occasionally, organizations implement their own, custom encryption
algorithms. There have been instances where those secret cryptographic
systems have been quickly cracked after being made public.

**Pro tip:** A cryptographic system *should not* be considered secure if
it requires secrecy around how it works.

##### Encryption is everywhere

Companies use both symmetric and asymmetric encryption. They often work
as a team, balancing security with user experience.

For example, websites tend to use asymmetric encryption to secure small
blocks of data that are important. Usernames and passwords are often
secured with asymmetric encryption while processing login requests. Once
a user gains access, the rest of their web session often switches to
using symmetric encryption for its speed.

Using data encryption like this is increasingly required by law.
Regulations like the Federal Information Processing Standards (FIPS
140-3) and the General Data Protection Regulation (GDPR) outline how
data should be collected, used, and handled. Achieving compliance with
either regulation is critical to demonstrating to business partners and
governments that customer data is handled responsibly.

### Symmetric Encryption

**Symmetric-key algorithm**, these types of encryption algorithms are
called *symmetric* because they use the same key to encrypt and decrypt
messages.

#### General/basic types

##### Substitution cyphers

Replacing one char with another.

##### Transposition cyphers

*Like Caesar cypher*

The number of the offset is the key. Another popular example of this is
referred to as R O T 13 or ROT-13, where the alphabet is rotated 13
places, but really ROT-13 is a Caesar cipher that uses a key of 13.

<img src="./media/image4.png" style="width:6.5in;height:4.37153in"
alt="Text Description automatically generated" />

You might notice something about the ROT-13 mapping table or the fact
that we're offsetting the alphabet by 13 characters. Thirteen is exactly
half of the alphabet. This results in the ROT-13 cipher being an
<u>inverse of itself</u>. What this means is that <u>you can recover the
plaintext from ciphertext by performing the ROT-13 operation on the
ciphertext</u>.

##### Block ciphers

The cipher takes data in, places that into a bucket or block of data
that's a fixed size, then encodes that entire block as one unit. If the
data to be encrypted isn't big enough to fill the block, the extra space
will be padded to ensure the plaintext fits into the blocks evenly.

##### Stream ciphers. 

A **stream cipher** as the name implies, <u>takes a stream of input and
encrypts the stream one character or one digit at a time, outputting one
encrypted character or digit at a time.</u> So, there's a one- to-one
relationship between data in and encrypted data out. Now generally
speaking, stream ciphers are faster (than block) and less complex to
implement, but they can be less secure than block ciphers. If the key
generation and handling isn't done properly, if the same key is used to
encrypt data two or more times, it's possible to break the cipher and to
recover the plaintext.

To avoid key reuse, **initialization vector** or **IV** is used (similar
to salt). That's a bit of random data that's integrated into the
encryption key and the resulting combined key is then used to encrypt
the data. The idea behind this is if you have one shared master key,
then generate a one-time encryption key. That master encryption key is
used only once by generating a new encryption key using the combination
of the master key and the IV. In order for the encrypted message to be
decoded, the IV must be sent in plaintext along with the encrypted
message. A good example of this can be seen when inspecting the 802.11
frame of a WEP encrypted wireless packet. The IV is included in
plaintext right before the encrypted data payload.

<img src="./media/image5.png" style="width:6.5in;height:3.52292in"
alt="Timeline Description automatically generated" />

#### Symmetric Encryption Algorithms

##### Data Encryption Standard (DES)

One of the earliest encryption standards is **DES**, which stands for
**Data Encryption Standard**. DES was designed in the 1970s by IBM, with
some input from the US National Security Agency. DES was adopted as an
official **FIPS**, **Federal Information Processing Standard** for the
US. This means that DES was adopted as a federal standard for encrypting
and securing government data. DES is a symmetric block cipher that uses
64-bit key sizes and operates on blocks 64-bits in size. Though the key
size is technically 64-bits in length, 8-bits are used only for parity
checking, a simple form of error checking. This means that real world
key length for DES is only 56-bits.

A quick note about encryption key sizes since we haven't covered that
yet. In symmetric encryption algorithms, the same key is used to encrypt
as to decrypt, everything else being the same.

The key is the unique piece that protects your data and the symmetric
key must be kept secret to ensure the confidentiality of the data being
protected. The key size, defined in bits, is the total number of bits or
data that comprises the encryption key. So you can think of the key size
as the upper limit for the total possible keys for a given encryption
algorithm. Key length is super important in cryptography since it
essentially defines the maximum potential strength of the system.
Imagine an ideal symmetric encryption algorithm where there are no flaws
or weaknesses in the algorithm itself. In this scenario, the only
possible way for an adversary to break your encryption would be to
attack the key instead of the algorithm. One attack method is to just
guess the key and see if the message decodes correctly. This is referred
to as a brute-force attack. Longer key lengths protect against this type
of attack. Let's take the DES key as an example. 64-bits long minus the
8 parity bits gives us a key length of 56-bits. This means that there
are a maximum of 2 to the 56th power, or 72 quadrillion possible keys.
That seems like a ton of keys, and back in the 1970s, it was. But as
technology advanced and computers got faster and more efficient, 64-bit
keys quickly proved to be too small. What were once only theoretical
attacks on a key size became reality in 1998 when the EFF, Electronic
Frontier Foundation, decrypted a DES-encrypted message in only 56 hours.

##### AES, Advanced Encryption Standard (AES)

Because of the inherent weakness of the small key size of DES,
replacement algorithms were designed and proposed. A number of new ones
appeared in the 1980s and 1990s. Many kept the 64-bit block size, but
used a larger key size, allowing for easier replacement of DES. In 1997,
the NIST, National Institute of Standards and Technology, wanted to
replace DES with a new algorithm, and in 2001, adopted **AES**,
**Advanced Encryption Standard**, after an international competition.

**AES** is also the first and only public cipher that's approved for use
with top secret information by the United States National Security
Agency. AES is also a symmetric block cipher similar to DES in which it
replaced. But AES uses 128-bit blocks, twice the size of DES blocks, and
supports key lengths of 128-bit, 192-bit, or 256-bit. Because of the
large key size, brute-force attacks on AES are only theoretical right
now, because the computing power required (or time required using modern
technology) exceeds anything feasible today. I want to call out that
these algorithms are the overall designs of the ciphers themselves.
These designs then must be implemented in either software or hardware
before the encryption functions can be applied and put to use. An
important thing to keep in mind when considering various encryption
algorithms is speed and ease of implementation. Ideally, an algorithm
shouldn't be overly difficult to implement because complicated
implementation can lead to errors and potential loss of security due to
bugs introduced in implementation. Speed is important because sometimes
data will be encrypted by running the data through the cipher multiple
times. These types of cryptographic operations wind up being performed
very often by devices, so the faster they can be accomplished with the
minimal impact to the system, the better. This is why some platforms
implement these cryptographic algorithms in hardware to accelerate the
processes and remove some of the burden from the CPU. For example,
modern CPUs from Intel or AMD have AES instructions built into the CPUs
themselves. This allows for far greater computational speed and
efficiency when working on cryptographic workloads. Let's talk briefly
about what was once a wildly used and popular algorithm but has since
been proven to be weak and is discouraged from use.

*Concise summary*

AES (Advanced Encryption Standard) has become the encryption algorithm
of choice for governments, financial institutions, and
security-conscious enterprises around the world. The U.S. National
Security Agency (NSC) uses it to protect the country’s “top secret”
information.

The AES algorithm successively applies a series of mathematical
transformations to each 128-bit block of data. Because the computational
requirements of this approach are low, AES can be used with consumer
computing devices such as laptops and smartphones, as well as for
quickly encrypting large amounts of data. For example, the IBM z14
mainframe series uses AES to enable pervasive encryption in which all
the data in the entire system, whether at rest or in transit, is
encrypted.

AES is a symmetric algorithm which uses the same 128, 192, or 256 bit
key for both encryption and decryption (the security of an AES system
increases exponentially with key length). With even a 128-bit key, the
task of cracking AES by checking each of the 2128 possible key values (a
“brute force” attack) is so computationally intensive that even the
fastest supercomputer would require, on average, more than 100 trillion
years to do it. In fact, AES has never been cracked, and based on
current technological trends, is expected to remain secure for years to
come.

##### RC4

**RC4**, or **Rivest Cipher 4**, is a symmetric stream cipher that
gained widespread adoption because of its simplicity and speed. RC4
supports key sizes from 40-bits to 2,048-bits. So the weakness of RC4
aren't due to brute-force attacks, but the cipher itself has inherent
weaknesses and vulnerabilities that aren't only theoretically possible,
there are lots of examples showing RC4 being broken. A recent example of
RC4 being broken is the RC4 NOMORE attack. This attack was able to
recover an authentication cookie from a TLS-encrypted connection in just
52 hours. As this is an attack on the RC4 cipher itself, any protocol
that uses this cipher is potentially vulnerable to the attack. Even so,
RC4 was used in a bunch of popular encryption protocols, like WEP for
wireless encryption, and WPA, the successor to WEP. It was also
supported in SSL and TLS until 2015 when RC4 was dropped in all versions
of TLS because of inherent weaknesses. For this reason, most major web
browsers have dropped support for RC4 entirely, along with all versions
of SSL, and use TLS instead.

##### Galois/Counter Mode (GCM)

The preferred secure configuration is **TLS 1.2 with AES GCM**, a
specific mode of operation for the AES block cipher that essentially
turns it into a stream cipher.

**GCM**, or **Galois/Counter Mode**, works by taking randomized seed
value, incrementing this and encrypting the value, creating sequentially
numbered blocks of ciphertexts. The ciphertexts are then incorporated
into the plain text to be encrypted. GCM is super popular due to its
security being based on AES encryption, along with its performance, and
the fact that it can be run in parallel with great efficiency. You can
read more about the RC4 NOMORE attack in the next reading. So now that
we have covered symmetric encryption and some examples of symmetric
encryption algorithms, what are the benefits or disadvantages of using
symmetric encryption? Because of the symmetric nature of the encryption
and decryption process, it's relatively easy to implement and maintain.
That's one shared secret that you have to maintain and keep secure.
Think of your Wi-Fi password at home. There's one shared secret, your
Wi-Fi password, that allows all devices to connect to it. Can you
imagine having a specific Wi-Fi password for each device of yours? That
would be a nightmare and super hard to keep track of. Symmetric
algorithms are also very fast and efficient at encrypting and decrypting
large batches of data. So what are the downsides of using symmetric
encryption? While having one shared secret that both encrypts and
decrypts seems convenient up front, this can actually introduce some
complications. What happens if your secret is compromised? Imagine that
your Wi-Fi password was stolen and now you have to change it. Now you
have to update your Wi-Fi password on all your devices and any devices
your friends or family might bring over. What do you have to do when a
friend or family member comes to visit and they want to get on your
Wi-Fi? You need to provide them with your Wi-Fi password, or the shared
secret that protects your Wi-Fi network. This usually isn't an issue
since you hopefully know the person and you trust them, and it's usually
only one or two people at a time. But what if you had a party at your
place with 50 strangers? Side note, why are you having a party at your
home with 50 strangers? Anyhow, how could you provide the Wi-Fi password
only to the people you trust without strangers overhearing? Things could
get really awkward really fast. In the next lesson, we'll explore other
ways besides symmetric key algorithms to protect data and information.

More info: <http://www.rc4nomore.com/>

SSL Stripping

<img src="./media/image6.png" style="width:6.5in;height:2.97569in"
alt="Diagram Description automatically generated" />

### Asymmetric Encryption (Public Key Encryption)

*Note: Asymmetric encryption is not inherently more secure than
symmetric encryption – rather, it’s more effective in unsecure
environments.*

#### General/Overview

##### Encryption in theory

**Public keys**: Can only encrypt – but can’t be used to decrypt.

**Private keys**: Can only be used to decrypt.

Note: A public key can be derived from a private key.

<img src="./media/image7.png" style="width:6.5in;height:4.36806in"
alt="A picture containing graphical user interface Description automatically generated" />

Want to learn more about Asymmetric Encryption? Check out these extra
videos :  
  
  
<https://www.youtube.com/watch?v=NmM9HA2MQGI>  
  
<https://www.youtube.com/watch?v=Yjrfm_oRO0w>  
  
<https://www.youtube.com/watch?v=vsXMMT2CqqE&t=>  
  
<https://www.youtube.com/watch?v=NF1pwjL9-DE>

Remember why symmetric ciphers are referred to as symmetric? It's
because the same key is used to encrypt as to decrypt. This is in
contrast to asymmetric encryption systems because as the name implies,
**different keys are used to encrypt and decrypt**. So how exactly does
that work? Well, let's imagine here that there are two people who would
like to communicate securely, we'll call them Suzanne and Daryll. Since
they're using asymmetric encryption in this example, the first thing
they each must do is generate a private key, then using this private
key, a public key is derived. The strength of the asymmetric encryption
system comes from the computational difficulty of figuring out the
corresponding private key given a public key. Once Suzanne and Daryll
have generated private and public key pairs, they exchange public keys.
You might have guessed from the names that the public key is public and
can be shared with anyone, while the private key must be kept secret.
When Suzanne and Daryll have exchanged public keys, they're ready to
begin exchanging secure messages.

When Suzanne wants to send Daryll an encrypted message, she uses
Daryll's public key to encrypt the message and then send the ciphertext.
Daryll can then use his private key to decrypt the message and read it,
<u>because of the relationship between private and public keys, only
Daryll's private key can decrypt messages encrypted using Daryll's
public key</u>. The same is true of Susanne's key pairs. So when Daryll
is ready to reply to Suzanne's message, he'll use Suzanne's public key
to encode his message and Suzanne will use her private key to decrypt
the message. Can you see why it's called asymmetric or public key
cryptography? We've just described encryption and decryption operations
using an asymmetric cryptosystem, but there's one other very useful
function the system can perform, **public key signatures**.

Let's go back to our friends Suzanne and Daryll. Let's say, Suzanne
wants to send a message to Darryll and she wants to make sure that
Daryll knows the message came from her and no one else, and that the
message was not modified or tampered with. She could do this by
composing the message and combining it with her private key to generate
a digital signature. She then sends this message along with the
associated digital signature to Daryll. We're assuming Suzanne and
Daryll have already exchanged public keys previously in this scenario.
Daryll can now verify the message's origin and authenticity by combining
the message, the digital signature, and Suzanne's public key. If the
message was actually signed using Susanne's private key and not someone
else's and the message wasn't modified at all, then the digital
signature should validate. If the message was modified, even by one
whitespace character, the validation will fail and Daryll shouldn't
trust the message. This is an important component of the asymmetric
cryptosystem. Without message verification, anyone could use Daryll's
public key and send him an encrypted message claiming to be from
Suzanne.

The three concepts that an asymmetric cryptosystem grants us are
**confidentiality**, **authenticity**, and **non-repudiation**.

- **Confidentiality** is granted through the encryption-decryption
  mechanism. Since our encrypted data is kept confidential and secret
  from unauthorized third parties.

- **Authenticity** is granted by the digital signature mechanism, as the
  message can be authenticated or verified that it wasn't tampered with.

- **Non-repudiation** means that the author of the message isn't able to
  dispute the origin of the message. In other words, this allows us to
  ensure that the message came from the person claiming to be the
  author.

> Can you see the benefit of using an asymmetric encryption algorithm
> versus a symmetric one? Asymmetric encryption allows secure
> communication over an untrusted channel, but with symmetric
> encryption, we need some way to securely communicate the shared secret
> or key with the other party. If that's the case, it seems like
> asymmetric encryption is better, right? Well, sort of. While
> asymmetric encryption works really well in untrusted environments,
> it's also computationally more expensive and complex. On the other
> hand, symmetric encryption algorithms are faster, and more efficient,
> and encrypting large amounts of data. In fact, what many secure
> communications schemes do is take advantage of the relative benefits
> of both encryption types by using both, for different purposes. An
> asymmetric encryption algorithm is chosen as a key exchange mechanism
> or cipher. What this means, is that the symmetric encryption key or
> shared secret is transmitted securely to the other party using
> asymmetric encryption to keep the shared secret secure in transit.
> Once the shared secret is received, data can be sent quickly, and
> efficiently, and securely using a symmetric encryption cipher. Clever?
> One last topic to mention is somewhat related to asymmetric encryption
> and that's MACs or **Message Authentication Codes**, not to be
> confused with media access control or MAC addresses.
>
> A **MAC** is a bit of information that allows authentication of a
> received message, ensuring that the message came from the alleged
> sender and not a third party masquerading as them. It also ensures
> that the message wasn't modified in some way in order to provide data
> integrity. This sounds super similar to digital signatures using
> public key cryptography, doesn't it? While very similar, it differs
> slightly since the secret key that's used to generate the MAC is the
> same one that's used to verify it. In this sense, it's similar to
> symmetric encryption system and the secret key must be agreed upon by
> all communicating parties beforehand or shared in some secure way.
> This describes one popular and secure type of MAC called HMAC or a
> Keyed-Hash Message Authentication Code. HMAC uses a cryptographic hash
> function along with a secret key to generate a MAC. Any cryptographic
> hash functions can be used like Sha-1 or MD5 and the strength or
> security of the MAC is dependent upon the underlying security of the
> cryptographic hash function used. The MAC is sent alongside the
> message that's being checked. The Mac is verified by the receiver by
> performing the same operation on the received message, then comparing
> the computed MAC with the one received with the message. If the MACs
> are the same, then the message is authenticated. There are also MACs
> based on symmetric encryption ciphers, either block or stream like DES
> or AES, which are called CMACs or Cipher-Based Message Authentication
> Codes. The process is similar to HMAC, but instead of using a hashing
> function to produce a digest, a symmetric cipher with a shared keys
> used to encrypt the message and the resulting output is used as the
> MAC. A specific and popular example of a CMAC though slightly
> different is CBC-MAC or Cipher Block Chaining Message Authentication
> Codes. CBC-MAC is a mechanism for building MACs using block ciphers.
> This works by taking a message and encrypting it using a block cipher
> operating in CBC mode. CBC mode is an operating mode for block ciphers
> that incorporates a previously encrypted block cipher text into the
> next block's plain text. So, it builds a chain of encrypted blocks
> that require the full, unmodified chain to decrypt. This chain of
> interdependently encrypted blocks means that any modification to the
> plain text will result in a different final output at the end of the
> chain, ensuring message integrity. In the next section, we'll check
> out some common examples of asymmetric encryption algorithms and
> systems. I'll see you there.

#####  How to break encryption

Many modern encryption algorithms have been battle tested (sometimes for
decades) with no known vulnerabilities. This, however, does not mean
that such encryption cannot be broken.

Breaking encryption with no known flaws is a bit like guessing a
password. If you guess enough times, you will eventually get it right.
However, with strong encryption, this can take a long time.

For example, very few modern laptops have an Rmax processing benchmark
higher than 1 teraFLOP. The most powerful (known) supercomputer in the
world is currently Fugaku, which has a Rmax peak speed of 442 petaFLOPS,
with 1 petaFLOP = 1000 teraFLOPS.

Dedicating its entire output to the task, it would take Fugaku over 12
trillion years to exhaust all possible combinations for AES-128. AES-256
is 340 billion-billion-billion-billion times harder to brute force than
AES-128. To put this into perspective, the universe is 14 billion years
old.

However, there are adversaries with significantly more computing power
than one laptop (or even supercomputer). Some government agencies have
access to hundreds of thousands of servers that could bring breaking
weaker encryption into the realm of possibility.

Quantum computing will eventually pose new challenges to secure
encryption, which is a subject we will discuss in an upcoming post.

#### Asymmetric Algorithms

##### Diffie-Hellman

Earlier, we talked about how asymmetric systems are commonly used as key
exchange mechanisms to establish a shared secret that will be used with
symmetric cipher. Another popular key exchange algorithm is DH or
Diffie-Hellman named for the co-inventors. Let's walk through how the DH
key exchange algorithm works. Let's assume we have two people who would
like to communicate over an unsecured channel, and let's call them
Suzanne and Daryll. I've grown pretty fond of these two. First, Suzanne
and Daryl agree on the starting number that would be random and will be
very large integer. This number should be different for every session
and doesn't need to be secret. Next, each person chooses another
randomized large number but this one is kept secret. Then, they combine
their shared number with their respective secret number and send the
resulting mix to each other. Next, each person combines their secret
number with the combined value they received from the previous step. The
result is a new value that's the same on both sides without disclosing
enough information to any potential eavesdroppers to figure out the
shared secret. This algorithm was designed solely for key exchange,
though there have been efforts to adapt it for encryption purposes. It's
even been used as part of a PKI system or **Public Key Infrastructure**
system. We'll dive more into PKI systems later in this course.

##### RSA

So, one of the first practical asymmetric cryptography systems to be
developed is RSA, name for the initials of the three co-inventors. Ron
Rivest, Adi Shamir and Leonard Adleman. This crypto system was patented
in 1983 and was released to the public domain by RSA Security in the
year 2000. The RSA system specifies mechanisms for generation and
distribution of keys along with encryption and decryption operation
using these keys. We won't go into the details of the math involved,
since it's pretty high-level stuff and beyond the scope of this class.
But, it's important to know that the key generation process depends on
choosing two unique, random, and usually very large prime numbers. DSA
or Digital Signature Algorithm is another example of an asymmetric
encryption system, though its used for signing and verifying data. It
was patented in 1991 and is part of the US government's Federal
Information Processing Standard. Similar to RSA, the specification
covers the key generation process along with the signing and verifying
data using the key pairs. It's important to call out that the security
of this system is dependent on choosing a random seed value that's
incorporated into the signing process. If this value was leaked or if it
can be inferred if the prime number isn't truly random, then it's
possible for an attacker to recover the private key. This actually
happened in 2010 to Sony with their PlayStation 3 game console. It turns
out they weren't ensuring this randomized value was changed for every
signature. This resulted in a hacker group called failOverflow being
able to recover the private key that Sony used to sign software for
their platform. This allowed moders to write and sign custom software
that was allowed to run on the otherwise very locked down console
platform. This resulted in game piracy becoming a problem for Sony, as
this facilitated the illicit copying and distribution of games which
caused significant losses in sales. I've included links to more about
this in the next reading, in case you want to dive deeper.

*Summary*

RSA is named for the MIT scientists (Rivest, Shamir, and Adleman) who
first described it in 1977. It is an asymmetric algorithm that uses a
publicly known key for encryption, but requires a different key, known
only to the intended recipient, for decryption. In this system,
appropriately called public key cryptography (PKC), the public key is
the product of multiplying two huge prime numbers together. Only that
product, 1024, 2048, or 4096 bits in length, is made public. But RSA
decryption requires knowledge of the two prime factors of that product.
Because there is no known method of calculating the prime factors of
such large numbers, only the creator of the public key can also generate
the private key required for decryption.

RSA is more computationally intensive than AES, and much slower. It’s
normally used to encrypt only small amounts of data.

##### Elliptic curve cryptography

**Elliptic curve cryptography** or ECC is a public key encryption system
that uses the algebraic structure of elliptic curves over finite fields
to generate secure keys. What does that even mean? Well, traditional
public key systems, make use of factoring large prime numbers whereas
ECC makes use of elliptic curves. And elliptic curve is composed of a
set of coordinates that fit in equation, similar to something like Y to
the second equals X to the third, plus A X plus B. Elliptic curves have
a couple of interesting and unique properties. One is horizontal
symmetry, which means that at any point in the curve can be mirrored
along the x axis and still make up the same curve. On top of this, any
non-vertical line will intersect the curve in three places at most. Its
this last property that allows elliptic curves to be used in encryption.
The benefit of elliptic curve based encryption systems is that they are
able to achieve security similar to traditional public key systems with
smaller key sizes. So, for example, a 256 bit elliptic curve key, would
be comparable to a 3,072 bit RSA key. This is really beneficial since it
reduces the amount of data needed to be stored and transmitted when
dealing with keys. Both Diffie-Hellman and DSA have elliptic curve
variants, referred to as ECDH and ECDSA, respectively. The US NEST
recommends the use of EC encryption, and the NSA allows its use to
protect up the top secret data with 384 bit EC keys. But, the NSA has
expressed concern about EC encryption being potentially vulnerable to
quantum computing attacks, as quantum computing technology continues to
evolve and mature. I'm going to buy Suzanne and Darryl drink today for
all their hard work. In the meantime, we've cooked up an assignment for
you that will test your encryption and decryption skills. Take your time
to decode all the details, and I'll see you all in the next lesson.

Very common for mobile/low-power computing devices.

ECC is six times more efficient than RSA. ECC with 256-bit key is
equivalent to RSA with a 2048-bit key.

##### PGP 

**PGP** stands for **Pretty Good Privacy**. How's that for a creative
name? Well, PGP is an encryption application that allows authentication
of data along with privacy from third parties relying upon asymmetric
encryption to achieve this. It's most commonly used for encrypted email
communication, but it's also available as a full disk encryption
solution or for encrypting arbitrary files, documents, or folders. PGP
was developed by Phil Zimmerman in 1991 and it was freely available for
anyone to use. The source code was even distributed along with the
software. Zimmerman was an anti nuclear activist, and political activism
drove his development of the PGP encryption software to facilitate
secure communications for other activists. PGP took off once released
and found its way around the world, which wound up getting Zimmerman
into hot water with the US federal government. At the time, US federal
export regulations classified encryption technology that used keys
larger than 40 bits in length as munitions. This meant that PGP was
subject to similar restrictions as rockets, bombs, firearms, even
nuclear weapons. PGP was designed to use keys no smaller than 128-bit,
so it ran up against these export restrictions, and Zimmerman faced a
federal investigation for the widespread distribution of his
cryptographic software. Zimmerman took a creative approach to
challenging these restrictions by publishing the source code in a
hardcover printed book which was made available widely. The idea was
that the contents of the book should be protected by the first amendment
of the US constitution. Pretty clever? The investigation was eventually
closed in 1996 without any charges being filed, and Zimmerman didn't
even need to go to court. You can read more about why he developed PGP
in the next reading. PGP is widely regarded as very secure, with no
known mechanisms to break the encryption via cryptographic or
computational means. It's been compared to military grade encryption,
and there are numerous cases of police and government unable to recover
data protected by PGP encryption. In these cases, law enforcement tend
to resort to legal measure to force the handover of passwords or keys.
Originally, PGP used the RSA algorithm, but that was eventually replaced
with DSA to avoid issues with licensing.

<https://www.philzimmermann.com/EN/essays/WhyIWrotePGP.html>

PGP gave rise to the OpenPGP standard:
<https://www.openpgp.org/about/standard/>

A JavaScript Library: <https://openpgpjs.org/>

Also served as the catalyst for secure email services which adhere to
the OpenPGP standard to encrypt email and OpenPGP.js to secure data on
the client-side (front-end). These include CTemplar and Protonmail.

AES vs PGP: Which should I use?

- AES is fast and works best in closed systems and large databases

- PGP should be used when sharing information across an open network,
  but it can be slower and works better for individual files.

### How AES and RSA work together (public and private)

A major issue with AES is that, as a symmetric algorithm, it requires
that both the encryptor and the decryptor use the same key. This gives
rise to a crucial key management issue – how can that all-important
secret key be distributed to perhaps hundreds of recipients around the
world without running a huge risk of it being carelessly or deliberately
compromised somewhere along the way? The answer is to combine the
strengths of AES and RSA encryption.

In many modern communication environments, including the internet, the
bulk of the data exchanged is encrypted by the speedy AES algorithm. To
get the secret key required to decrypt that data, authorized recipients
publish a public key while retaining an associated private key that only
they know. The sender then uses that public key and RSA to encrypt and
transmit to each recipient their own secret AES key, which can be used
to decrypt the data.

## Hashing

<img src="./media/image8.png" style="width:6.5in;height:2.46319in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image9.png" style="width:6.5in;height:1.55069in"
alt="Graphical user interface, text, application, chat or text message Description automatically generated" />

<img src="./media/image10.png" style="width:6.5in;height:3.00903in"
alt="Text Description automatically generated" />

<img src="./media/image11.png" style="width:6.5in;height:2.10694in"
alt="Graphical user interface, text, application Description automatically generated" />

So far, we've talked about two forms of encryption, symmetric and
asymmetric. In this next lesson, we're going to cover a special type of
function that's widely used in computing and especially within security,
hashing. No, not the breakfast kind, although those are delicious.
Hashing or a hash function is a type of function or operation that takes
in an arbitrary data input and maps it to an output of a fixed size,
called a hash or a digest. The output size is usually specified in bits
of data and is often included in the hashing function name. What this
means exactly is that you feed in any amount of data into a hash
function and the resulting output will always be the same size. But the
output should be unique to the input, such that two different inputs
should never yield the same output. Hash functions have a large number
of applications in computing in general, typically used to uniquely
identify data. You may have heard the term hash table before in context
of software engineering. This is a type of data structure that uses
hashes to accelerate data lookups. Hashing can also be used to identify
duplicate data sets in databases or archives to speed up searching of
tables or to remove duplicate data to save space. Depending on the
application, there are various properties that may be desired, and a
variety of hashing functions exist for various applications. We're
primarily concerned with cryptographic hash functions which are used for
various applications like authentication, message integrity,
fingerprinting, data corruption detection and digital signatures.
Cryptographic hashing is distinctly different from encryption because
cryptographic hash functions should be one directional. They're similar
in that you can input plain text into the hash function and get output
that's unintelligible but you can't take the hash output and recover the
plain text. The

*ideal cryptographic hash function should be*

- **deterministic**, meaning that the same input value should always
  return the same hash value.

- The function should be **quick to compute and be efficient**. It
  should be infeasible to reverse the function and recover the plain
  text from the hash digest. A small change in the input should result
  in a change in the output so that there is no correlation between the
  change in the input and the resulting change in the output.

- Finally, the function **should not allow for hash collisions**,
  meaning two different inputs mapping to the same output.

> Cryptographic hash functions are very similar to symmetric key block
> ciphers and that they operate on blocks of data. In fact, many popular
> hash functions are actually based on modified block ciphers. Lets take
> a basic example to quickly demonstrate how a hash function works.
> We'll use an imaginary hash function for demonstration purposes. Lets
> say we have an input string of "Hello World" and we feed this into a
> hash function which generates the resulting hash of E49A00FF. Every
> time we feed this string into our function, we get the same hash
> digest output. Now let's modify the input very slightly so it becomes
> "hello world", all lower case now. While this change seems small to
> us, the resulting hash output is wildly different, FF1832AE. Here is
> the same example but using a real hash function, in this case md5sum.
>
> <img src="./media/image12.png" style="width:6.5in;height:2.27639in"
> alt="Text Description automatically generated" />

**Hashing Algorithms**

NTLM creates a 128-bit fixed output.

MD-5 creates a 128-bit fixed output.

SHA-1 creates a 160-bit fixed output.

SHA-2 creates a 256-bit fixed output.

**What's a hash collision?**

A hash collision is when 2 different inputs give the same output. Hash
functions are designed to avoid this as best as they can, especially
being able to engineer (create intentionally) a collision. Due to the
pigeonhole effect, collisions are not avoidable. The pigeonhole effect
is basically, there are a set number of different output values for the
hash function, but you can give it any size input. As there are more
inputs than outputs, some of the inputs must give the same output. If
you have 128 pigeons and 96 pigeonholes, some of the pigeons are going
to have to share.

MD5 and SHA1 have been attacked, and made technically insecure due to
engineering hash collisions. However, no attack has yet given a
collision in both algorithms at the same time so if you use the MD5 hash
AND the SHA1 hash to compare, you will see they’re different. The MD5
collision example is available
from <https://www.mscs.dal.ca/~selinger/md5collision/> and details of
the SHA1 Collision are available from <https://shattered.io/>. Due to
these, you shouldn't trust either algorithm for hashing passwords or
data.

### MD5

In this section, we'll cover some of the more popular hashing functions,
both currently and historically. MD5 is a popular and widely used hash
function designed in the early 1990s as a cryptographic hashing
function. It operates on a 512 bit blocks and generates 128 bit hash
digests. While MD5 was published in 1992, a design flaw was discovered
in 1996, and cryptographers recommended using the SHA-1 hash, a more
secure alternative. But, this flaw was not deemed critical, so the hash
function continued to see widespread use and adoption. In 2004, it was
discovered that MD5 is susceptible to hash collisions, allowing for a
bad actor to craft a malicious file that can generate the same MD5
digest as another different legitimate file. Bad actors are the worst,
aren't they? Shortly after this flaw was discovered, security
researchers were able to generate two different files that have matching
MD5 hash digests. In 2008, security researchers took this a step further
and demonstrated the ability to create a fake SSL certificate, that
validated due to an empty five hash collision. Due to these very serious
vulnerabilities in the hash function, it was recommended to stop using
MD5 for cryptographic applications by 2010. In 2012, this hash collision
was used for nefarious purposes in the flame malware, which used the
forge Microsoft digital certificate to sign their malware, which
resulted in the malware appearing to be from legitimate software that
came from Microsoft. You can learn more about the flame malware in the
next reading.

### SHA-1

When design flaws were discovered in MD5, it was recommended to use
SHA-1 as a replacement. SHA-1 is part of the secure hash algorithm suite
of functions, designed by the NSA and published in 1995. It operates a
512 bit blocks and generates 160 bit hash digest. SHA-1 is another
widely used cryptographic hashing functions, used in popular protocols
like TLS/SSL, PGP SSH, and IPsec. SHA-1 is also used in version control
systems like Git, which uses hashes to identify revisions and ensure
data integrity by detecting corruption or tampering. SHA-1 and SHA-2
were required for use in some US government cases for protection of
sensitive information. Although, the US National Institute of Standards
and Technology, recommended stopping the use of SHA-1 and relying on
SHA-2 in 2010. Many other organizations have also recommended replacing
SHA-1 with SHA-2 or SHA-3. And major browser vendors have announced
intentions to drop support for SSL certificates that use SHA-1 in 2017.
SHA-1 also has its share of weaknesses and vulnerabilities, with
security researchers trying to demonstrate realistic hash collisions.
During the 2000s, a bunch of theoretical attacks were formulated and
some partial collisions were demonstrated, but full collisions using
these methods requires significant computing power. One such attack was
estimated to require $2.77 million in cloud computing CPU resources,
Wowza. In 2015, a different attack method was developed that didn't
demonstrate a full collision but this was the first time that one of
these attacks was demonstrated which had major implications for the
future security of SHA-1. What was only theoretically possible before,
was now becoming possible with more efficient attack methods and
increases in computing performance, especially in the space of GPU
accelerated computations in cloud resources. A full collision with this
attack method was estimated to be feasible using CPU and GPU cloud
computing for approximately $75 to $120,000 , much cheaper than previous
attacks. You can read more about these attacks and collisions in the
next reading. In early 2017, the first full collision of SHA-1 was
published. Using significant CPU and GPU resources, two unique PDF files
were created that result in the same SHA-1 hash. The estimated
processing power required to do this was described as equivalent of
6,500 years of a single CPU, and 110 years of a single GPU computing
non-stop. That's a lot of years.

### SHA-2

SHA-2 is actually a “family” of hashes and comes in a variety of
lengths, the most popular being 256-bit.

The variety of SHA-2 hashes can lead to a bit of confusion, as websites
and authors express them differently. If you see “SHA-2,” “SHA-256” or
“SHA-256 bit,” those names are referring to the same thing. If you see
“SHA-224,” “SHA-384,” or “SHA-512,” those are referring to the alternate
bit-lengths of SHA-2. You may also see some sites being more explicit
and writing out both the algorithm and bit-length, such as “SHA-2 384.”
But that’s obnoxious like making people include your middle initial when
you say your name.

### MIC (message integrity check)

There's also the concept of a **MIC**, or **message integrity check**.
This shouldn't be confused with a MAC or message authentication check,
since how they work and what they protect against is different. A MIC is
essentially a hash digest of the message in question. You can think of
it as a check sum for the message, ensuring that the contents of the
message weren't modified in transit. But this is distinctly different
from a MAC that we talked about earlier. It doesn't use secret keys,
which means the message isn't authenticated. There's nothing stopping an
attacker from altering the message, recomputing the checksum, and
modifying the MIC attached to the message. You can think of MICs as
protecting against accidental corruption or loss, but not protecting
against tampering or malicious actions.

<img src="./media/image13.png" style="width:6.5in;height:3.28681in"
alt="Graphical user interface, text, application, email Description automatically generated" />

During the 2000s, a bunch of [theoretical
attacks](https://eprint.iacr.org/2005/010) against SHA1 were
[formulated](https://www.schneier.com/blog/archives/2005/02/sha1_broken.html)
and some [partial collisions](https://eprint.iacr.org/2007/474) were
demonstrated. In early 2017, the first [full collision of
SHA1](https://shattered.io/) was published.

## Cryptography Applications

### Digital certificates and Public Key Infrastructure

<img src="./media/image14.png" style="width:6.5in;height:4.59306in"
alt="Graphical user interface, application, Teams Description automatically generated" />

In this lesson, we're going to cover PKI, or Public Key Infrastructure.
Spoiler alert, this is a critical piece to securing communications on
the Internet today. Earlier we talked about Public Key Cryptography and
how it can be used to securely transmit data over an untrusted channel
and verify the identity of a sender using digital signatures.

**PKI** is a system that defines the creation, storage and distribution
of digital certificates. A digital certificate is a file that proves
that an entity owns a certain public key. A certificate contains
information about the public key, the entity it belongs to and a digital
signature from another party that has verified this information. If the
signature is valid and we trust the entity that signed the certificate,
then we can trust the public key to be used to securely communicate with
the entity that owns it. The entity that's responsible for storing,
issuing, and signing certificates is referred to as **CA**, or
**Certificate Authority**. It's a crucial component of the PKI system.

A **certificate authority (CA)** is a server that issues digital
certificates for entities and maintains the associated private/public
key pair. 

There's also an **RA**, or **Registration Authority**, that's
responsible for verifying the identities of any entities requesting
certificates to be signed and stored with the CA. This role is usually
lumped together with the CA. A central repository is needed to securely
store and index keys and a certificate management system of some sort
makes managing access to storage certificates and issuance of
certificates easier.

<u>There are a few different types of certificates that have different
applications or uses.</u>

- The one you're probably most familiar with is **SSL or TLS *server*
  certificate**. This is a certificate that a web server presents to a
  client as part of the initial secure setup of an SSL, TLS connection.
  Don't worry, we'll cover SSL, TLS in more detail in a future lesson.
  The client usually a web browser will then verify that the subject of
  the certificate matches the host name of the server the client is
  trying to connect to. The client will also verify that the certificate
  is signed by a certificate authority that the client trusts.

  - It's possible for a certificate to be valid for multiple host names.
    In some cases, a **wild card certificate** can be issued where the
    host name is replaced with an asterisk, denoting validity for all
    host names within a domain.

- It's also possible for a server to use what's called a **Self Sign
  Certificate**. You may have guessed from the name. This certificate
  has been signed by the same entity that issued the certificate. This
  would basically be signing your own public key using your private key.
  Unless you already trusted this key, this certificate would fail to
  verify.

- **Another certificate type is an SSL or TLS *client* certificate**.
  This is an optional component of SSL, TLS connections and is less
  commonly seen than server certificates. As the name implies, these are
  certificates that are bound to clients and are used to authenticate
  the client to the server, allowing access control to a SSL, TLS
  service. These are different from server certificates in that the
  client certificates aren't issued by a public CA. Usually the service
  operator would have their own internal CA which issues and manages
  client certificates for their service.

- There are also **code signing certificates** which are used for
  signing executable programs. This allows users of these signed
  applications to verify the signatures and ensure that the application
  was not tampered with. It also lets them verify that the application
  came from the software author and is not a malicious twin.

> We've mentioned certificate authority trust, but not really explained
> it. So let's take some time to go over how it all works. PKI is very
> much dependent on trust relationships between entities, and building a
> network or chain of trust. This chain of trust has to start somewhere
> and that starts with the Root Certificate Authority. These root
> certificates are self signed because they are the start of the chain
> of trust. So there's no higher authority that can sign on their
> behalf. This Root Certificate Authority can now use the self-signed
> certificate and the associated private key to begin signing other
> public keys and issuing certificates. It builds a sort of tree
> structure with the root private key at the top of the structure. If
> the root CA signs a certificate and sets a field in the certificate
> called CA to true, this marks a certificate as an intermediary or
> subordinate CA. What this means is that the entity that this
> certificate was issued to can now sign other certificates. And this CA
> has the same trust as the root CA. An intermediary CA can also sign
> other intermediate CAs. You can see how this extension of trust from
> one root CA to intermediaries can begin to build a chain. A
> certificate that has no authority as a CA is referred to as an End
> Entity or Leaf Certificate. Similar to a leaf on a tree, it's the end
> of the tree structure and can be considered the opposite of the roots.
> You might be wondering how these root CAs wind up being trusted in the
> first place. Well, that's a very good question. In order to bootstrap
> this chain of trust, you have to trust a root CA certificate,
> otherwise the whole chain is untrusted. This is done by distributing
> root CA certificates via alternative channels. Each major OS vendor
> ships a large number of trusted root CA certificates with their OS.
> And they typically have their own programs to facilitate distribution
> of root CA certificates. Most browsers will then utilize the OS
> provided store of root certificates. Let's do a deep dive into
> certificates beyond just their function.
>
> <img src="./media/image15.png" style="width:4.07768in;height:1.87199in"
> alt="Graphical user interface, text, application, chat or text message Description automatically generated" />
>
> **The X.509 standard** is what defines the format of digital
> certificates. It also defines a certificate revocation list or CRL
> which is a means to distribute a list of certificates that are no
> longer valid. The X.509 standard was first issued in 1988 and the
> current modern version of the standard is version 3.
>
> The fields defined in X.509 certificate are, the

- version, what version of the X.509 standard certificate adheres to.

- Serial number, a unique identifier for their certificate assigned by
  the CA which allows the CA to manage and identify individual
  certificates.

- Certificate Signature Algorithm, this field indicates what public key
  algorithm is used for the public key and what hashing algorithm is
  used to sign the certificate.

- Issuer Name, this field contains information about the authority that
  signed the certificate.

- Validity, this contains two subfields, Not Before and Not After, which
  define the dates when the certificate is valid for.

- Subject, this field contains identifying information about the entity
  the certificate was issued to.

- Subject Public Key Info, these two subfields define the algorithm of
  the public key along with the public key itself.

- Certificate signature algorithm, same as the Subject Public Key Info
  field, these two fields must match.

- Certificate Signature Value, the digital signature data itself.

- There are also certificate fingerprints which aren't actually fields
  in the certificate itself, but are computed by clients when validating
  or inspecting certificates. These are just hash digests of the whole
  certificate. You can read about the full X.509 standard in the next
  reading.

> <img src="./media/image16.png" style="width:4.94884in;height:2.33167in"
> alt="Graphical user interface, text, application, chat or text message Description automatically generated" />
>
> An alternative to the centralized PKI model of establishing trust and
> binding identities is what's called the Web of Trust. A Web of Trust
> is where individuals instead of certificate authorities sign other
> individuals' public keys. Before an individual signs a key, they
> should first verify the person's identity through an agreed upon
> mechanism. Usually by checking some form of identification, driver's
> license, passport, etc. Once they determine the person is who they
> claim to be, signing their public key is basically vouching for this
> person. You're saying that you trust that this public key belongs to
> this individual. This process would be reciprocal, meaning both
> parties would sign each other's keys. Usually people who are
> interested in establishing web of trust will organize what are called
> Key Signing Parties where participants performed the same verification
> and signing. At the end of the party everyone's public key should have
> been signed by every other participant establishing a web of trust. In
> the future when one of these participants in the initial key signing
> party establishes trust with a new member, the web of trust extends to
> include this new member and other individuals they also trust. This
> allows separate webs of trust to be bridged by individuals and allows
> the network of trust to grow.
>
> <img src="./media/image17.png" style="width:6.5in;height:3.62153in"
> alt="Timeline Description automatically generated with low confidence" />

**Digital Signature**

Digital Signature = Hashed data + Private Key

Digital signatures are used for sender authentication and message
integrity. Digital signatures are created by hashing the data being sent
and encrypting it with their developer's or sender's private key.
Private keys are maintained securely by an individual or device and used
to decrypt messages that are encrypted by their public key. Private keys
are also used to create digital signatures by encrypting a hash of the
sent data.

**Louis, a software developer at Dion Training, created a hash value for
a software package and then encrypted this hash value using Dion
Training's private key. Which of the following terms is used to describe
this encrypted hash value?**

*Digital signature*

### SSL, and TLS: Cryptography in action

SSL/TLS does use symmetric encryption algorithms for encryption of data
payloads. It also uses asymmetric algorithms to securely exchange
information to establish a shared symmetric encryption key.

In this section, we'll dive into some real world applications of the
encryption concepts that we've covered so far. In the last section, we
mentioned SSL/TLS when we were talking about digital certificates. Now
that we understand how digital certificates function and the crucial
roles CAs play, let's check out how that fits into securing web traffic
via HTTPS. You've probably heard of HTTPS before, but do you know
exactly what it is and how it's different from HTTP? Very simply, HTTPS
is the secure version of HTTP, the Hypertext Transfer Protocol. So how
exactly does HTTPS protect us on the Internet? HTTPS can also be called
HTTP over SSL or TLS since it's essentially encapsulating the HTTP
traffic over an encrypted, secured channel utilizing SSL or TLS. You
might hear SSL and TLS used interchangeably, but SSL 3.0, the latest
revision of SSL, was deprecated in 2015, and TLS 1.2 is the current
recommended revision, with version 1.3 still in the works. Now, it's
important to call out that TLS is actually independent of HTTPS, and is
actually a generic protocol to permit secure communications and
authentication over a network. TLS is also used to secure other
communications aside from web browsing, like VoIP calls such as Skype or
Hangouts, email, instant messaging, and even Wi-Fi network security.

**TLS grants us three things.**

1.  One, a secure communication line, which means data being transmitted
    is protected from potential eavesdroppers.

2.  Two, the ability to authenticate both parties communicating, though
    typically, only the server is authenticated by the client.

3.  And three, the integrity of communications, meaning there are checks
    to ensure that messages aren't lost or altered in transit.

**TLS handshake**

TLS essentially provides a secure channel for an application to
communicate with a service, but there must be a mechanism to establish
this channel initially. This is what's referred to as a **TLS
handshake**.

<img src="./media/image18.png" style="width:6.5in;height:3.84375in"
alt="A picture containing diagram Description automatically generated" />

The handshake process kicks off with a client establishing a connection
with a TLS enabled service, referred to in the protocol as ClientHello.
This includes information about the client, like the version of the TLS
that the client supports, a list of cipher suites that it supports, and
maybe some additional TLS options. The server then responds with a
ServerHello message, in which it selects the highest protocol version in
common with the client, and chooses a cipher suite from the list to use.
It also transmits its digital certificate and a final ServerHelloDone
message. The client will then validate the certificate that the server
sent over to ensure that it's trusted and it's for the appropriate host
name. Assuming the certificate checks out, the client then sends a
ClientKeyExchange message. This is when the client chooses a key
exchange mechanism to securely establish a shared secret with the
server, which will be used with a symmetric encryption cipher to encrypt
all further communications. The client also sends a ChangeCipherSpec
message indicating that it's switching to secure communications now that
it has all the information needed to begin communicating over the secure
channel. This is followed by an encrypted Finished message which also
serves to verify that the handshake completed successfully.

The server replies with a ChangeCipherSpec and an encrypted Finished
message once the shared secret is received. Once complete, application
data can begin to flow over the now the secured channel. High five to
that.

**The session key** is the shared symmetric encryption key using TLS
sessions to encrypt data being sent back and forth. Since this key is
derived from the public-private key, if the private key is compromised,
there's potential for an attacker to decode all previously transmitted
messages that were encoded using keys derived from this private key.

To defend against this, there's a concept of forward secrecy. This is a
property of a cryptographic system so that even in the event that the
private key is compromised, the session keys are still safe. The SSH, or
secure shell, is a secure network protocol that uses encryption to allow
access to a network service over unsecured networks. Most commonly,
you'll see SSH use for remote login to command line base systems, but
the protocol is super flexible and has provisions for allowing arbitrary
networks and traffic over those ports to be tunneled over the encrypted
channel. It was originally designed as a secure replacement for the
Telnet protocol and other unsecured remote login shell protocols like
rlogin or r-exec. It's very important that remote login and shell
protocols use encryption. Otherwise, these services will be transmitting
usernames and passwords, along with keystrokes and terminal output in
plain text. This opens up the possibility for an eavesdropper to
intercept credentials and keystrokes, not good. SSH uses public key
cryptography to authenticate the remote machine that the client is
connecting to, and has provisions to allow user authentication via
client certificates, if desired. The SSH protocol is very flexible and
modular, and supports a wide variety of different key exchange
mechanisms like Diffie-Hellman, along with a variety of symmetric
encryption ciphers. It also supports a variety of authentication
methods, including custom ones that you can write. **<u>When using
public key authentication, a key pair is generated by the user who wants
to authenticate. They then must distribute those public keys to all
systems that they want to authenticate to using the key pair. When
authenticating, SSH will ensure that the public key being presented
matches the private key, which should never leave the user's
possession.</u>**

*Public keys are cryptographically tied to private keys!!!*

<img src="./media/image19.png" style="width:4.68563in;height:3.84012in"
alt="Text Description automatically generated" />

<img src="./media/image20.png" style="width:4.17305in;height:3.58811in"
alt="Text Description automatically generated" />

### Cryptographic Hardware

**Trusted Platform Module**

Welcome back. Let's dive right in. Another interesting application of
cryptography concepts, is the Trusted Platform Module or TPM. This is a
hardware device that's typically integrated into the hardware of a
computer, that's a dedicated crypto processor. TPM offers secure
generation of keys, random number generation, remote attestation, and
data binding and sealing. A TPM has unique secret RSA key burned into
the hardware at the time of manufacture, which allows a TPM to perform
things like hardware authentication. This can detect unauthorized
hardware changes to a system. Remote attestation is the idea of a system
authenticating its software and hardware configuration to a remote
system. This enables the remote system to determine the integrity of the
remote system. This can be done using a TPM by generating a secure hash
of the system configuration, using the unique RSA key embedded in the
TPM itself. Another use of this secret hardware backed encryption key is
data binding and sealing. It involves using the secret key to derive a
unique key that's then used for encryption of data. Basically, this
binds encrypted data to the TPM and by extension, the system the TPM is
installed in, sends only the keys stored in hardware in the TPM will be
able to decrypt the data. Data sealing is similar to binding since data
is encrypted using the hardware backed encryption key. But, in order for
the data to be decrypted, the TPM must be in a specified state. TPM is a
standard with several revisions that can be implemented as a discrete
hardware chip, integrated into another chip in a system, implemented in
firmware software or virtualize then a hypervisor. The most secure
implementation is the discrete chip, since these chip packages also
incorporate physical tamper resistance to prevent physical attacks on
the chip. Mobile devices have something similar referred to as a secure
element. Similar to a TPM, it's a tamper resistant chip often embedded
in the microprocessor or integrated into the mainboard of a mobile
device. It supplies secure storage of cryptographic keys and provides a
secure environment for applications. An evolution of secure elements is
the Trusted Execution Environment or TEE which takes the concept a bit
further. It provides a full-blown isolated execution environment that
runs alongside the main OS. This provides isolation of the applications
from the main OS and other applications installed there. It also
isolates secure processes from each other when running in the TEE. TPMs
have received criticism around trusting the manufacturer. Since the
secret key is burned into the hardware at the time of manufacture, the
manufacturer would have access to this key at the time. It is possible
for the manufacturer to store the keys that could then be used to
duplicate a TPM, that could break the security the module is supposed to
provide. There's been one report of a physical attack on a TPM which
allowed a security researcher to view and access the entire contents of
a TPM. But this attack required the use of an electron microscope and
micron precision equipment for manipulating a TPM circuitry. While the
process was incredibly time intensive and required highly specialized
equipment, it proved that such an attack is possible despite the tamper
protections in place. You can read more about it just after this video.
TPMs are most commonly used to ensure platform integrity, preventing
unauthorized changes to the system either in software or hardware, and
full disk encryption utilizing the TPM to protect the entire contents of
the disk.

**Full Disk Encryption**

Full Disk Encryption or FDE, as you might have guessed from the name, is
the practice of encrypting the entire drive in the system. Not just
sensitive files in the system. This allows us to protect the entire
contents of the disk from data theft or tampering. Now, there are a
bunch of options for implementing FDE. Like the commercial product PGP,
Bitlocker from Microsoft, which integrates very well with TPMs,
Filevault 2 from Apple, and the open source software dm-crypt, which
provides encryption for Linux systems. An FDE configuration will have
one partition or logical partition that holds the data to be encrypted.
Typically, the root volume, where the OS is installed. But, in order for
the volume to be booted, it must first be unlocked at boot time. Because
the volume is encrypted, the BIOS can't access data on this volume for
boot purposes. This is why FDE configurations will have a small
unencrypted boot partition that contains elements like the kernel,
bootloader and a netRD. At boot time, these elements are loaded which
then prompts the user to enter a passphrase to unlock the disk and
continue the boot process. FDE can also incorporate the TPM, utilizing
the TPM encryption keys to protect the disk. And, it has platform
integrity to prevent unlocking of the disk if the system configuration
is changed. This protects against attacks like hardware tampering, and
disk theft or cloning. Before we wrap up this module on encryption, I
wanted to touch base on the concept of random. Earlier, when we covered
the various encryption systems, one commonality kept coming up that
these systems rely on. Did you notice what it was? That's okay if you
didn't. It's the selection of random numbers. This is a very important
concept in encryption because if your number selection process isn't
truly random, then there can be some kind of pattern that an adversary
can discover through close observation and analysis of encrypted
messages over time. Something that isn't truly random is referred to as
pseudo-random. It's for this reason that operating systems maintain
what's referred to as an entropy pool. This is essentially a source of
random data to help seed random number generators. There's also
dedicated random number generators and pseudo-random number generators,
that can be incorporated into a security appliance or server to ensure
that truly random numbers are chosen when generating cryptographic keys.
I hope you found these topics in cryptography interesting and
informative. I know I did when I first learned about them. In the next
module, we'll cover the three As of security, authentication,
authorization and accounting. These three As are awesome and I'll tell
you why in the next module. But before we get there, one final quiz on
the cryptographic concept we've covered so far.

### Encrypted Web Traffic

<img src="./media/image21.png" style="width:6.5in;height:2.49653in"
alt="A picture containing text, screenshot, funny Description automatically generated" />

# Cryptology in Practice

## Encoding

**Encoding** - This is NOT a form of encryption, just a form of data
representation like base64 or hexadecimal. Immediately reversible.

### base64

**encode**

base64 \<file\>

*piping*

echo -n 'encodeme' | base64

**decode**

base64 -d \<file\>

## Hashing (Creating a hash digest of a string/file)

### Introduction

In this lab, you'll have hands-on practice demonstrating hashing and
hash verification using md5sum and shasum tools.

*Md5sum* is a hashing program that calculates and verifies 128-bit MD5
hashes. As with all hashing algorithms, theoretically, there's an
unlimited number of files that will have any given MD5 hash. Md5sum is
used to verify the integrity of files.

Similarly, *shasum* is an encryption program that calculates and
verifies SHA hashes. It's also commonly used to verify the integrity of
files.

In this lab, you'll see that almost any change to a file will cause its
MD5 hash or SHA hashes to change.

**What you'll do**

- **Compute**:You'll create a text file and generate hashes using the
  md5sum and shasum tools.

- **Inspect**:After you generate the hash digests, you'll inspect the
  resulting files.

- **Verify**:You'll verify the hash using the md5sum and shasum tools.

- **Modify**:You'll modify the text file and compare these results to
  the original hash to observe how the digest changes and how the hash
  verification process fails.

### MD5 (128 bit hash)

**MD5 without any newline characters (from stdin)**

<img src="./media/image22.png"
style="width:4.72983in;height:0.48965in" />

Note how md5sum reads in binary by default (no difference when adding -b
switch):

<img src="./media/image23.png" style="width:5.39659in;height:0.84387in"
alt="Text Description automatically generated with low confidence" />

Let's kick things off by creating a text file containing some data. Feel
free to substitute your own text data, if you want. This command creates
a text file called "file.txt" with a single line of basic text in it:

You should see the following output (or something very similar) :

echo 'This is some text in a file, just so we have some data' \>
file.txt

You'll now generate the MD5 sum for the file and store it. To generate
the sum for your new file, enter this md5sum command:

md5sum file.txt \> file.txt.md5

This creates the MD5 hash, and saves it to a new file. You can take a
look at the hash by printing its contents to the screen, using this
command:

cat file.txt.md5

This should print the hash to the terminal, which should look something
like this:

c7a8ef893898f9a6b380eb4ec1e87113 file.txt

More importantly, you can also verify that the hash is correct, and that
the original file (file.txt) hasn't been tampered with since the sum was
made. To do this, enter this command and see the following output, which
indicates that the hash is valid:

md5sum -c file.txt.md5

Since the original filename is included in the md5 file, we know which
file to reference.

Note – the file path to the original file is relative – this can be
changed (manully) to an absolute path this way you can move your.md5
file anywhere anad still reference the same flie to see if it’s been
changed.

file.txt: OK

md5sum

### Verifying an invalid file

Next, we'll demonstrate the security of this process by showing how even
a single-character change to the file results in a different hash.
First, you'll create a copy of the text file, and insert a single space
at the end of the file. Feel free to use any text-editor that you'd
like. Head's up that we've included instructions for making this change
in Nano. To make a copy of the file, enter this command:

cp file.txt badfile.txt

Then generate a new md5sum for the new file:

md5sum badfile.txt \> badfile.txt.md5

Note that the resulting hash is **identical** to the hash for our
original file.txt despite the filenames being different. This is because
hashing only looks at the data, not the metadata of the file.

cat badfile.txt.md5

cat file.txt.md5

To open the text file in Nano, enter this command:

nano badfile.txt

This will open the file in the text editor. To add a space to the end of
the file, use the arrow keys (not the mouse!) to move the cursor to the
end of the line of text. Then, press the spacebar to add a space
character to the end of the file. Your screen should look like this
image:

This is some text in a file, just so we have some data

^G Get Help ^O Write Out ^W Where Is ^K Cut Text ^J Justify ^C Cur Pos

^X Exit ^R Read File ^\\ Replace ^U Uncut Text ^T To Spell ^\_ Go To
Line

To save the file, press **ctrl+X**. You should see this message:

This is some text in a file, just so we have some data

Save modified buffer? (Answering "No" will DISCARD changes.)

Y Yes

N No ^C Cancel

Confirm by typing **Y** for **yes**, then press **Enter** to confirm.

This will take you back to the normal terminal screen. Now that you've
made a very minor change to the file, try verifying the hash again. It
should fail verification this time, showing that any change at all will
result in a different hash. Try to verify it by entering this command
again:

md5sum -c badfile.txt.md5

You should see a message that shows that the verification wasn't
successful:

badfile.txt: FAILED

md5sum: WARNING: 1 computed checksum did NOT match

Click *Check my progress* to verify the objective.

md5sum failure

To see how different the hash of the edited file is, generate a new hash
and inspect it:

md5sum badfile.txt \> new.badfile.txt.md5

cat new.badfile.txt.md5

Check out how it's different from our previously generated hash:

dcd879fd2c162dbfe9a186a67902e7ce badfile.txt

For reference, here are the contents of the original sum:

c7a8ef893898f9a6b380eb4ec1e87113 file.txt

Click *Check my progress* to verify the objective.

Recompute MD5 Sum

### SHA

Let's do the same steps, but for SHA1 and SHA256 hashes using the shasum
tool. Functionally, the two work in very similar ways, and their purpose
is the same. But SHA1 and SHA256 offer stronger security than MD5, and
SHA256 is more secure than SHA1. This means that it's easier for a
malicious third party to attack a system using MD5 than one using SHA1.
And because SHA256 is the strongest of the three, it's currently widely
used.

### SHA1

To create the SHA1 sum and save it to a file, use this command:

shasum file.txt \> file.txt.sha1

View it by printing it to the screen, like you've done before:

cat file.txt.sha1

65639a89992784291d769e05338085d1739645c6 file.txt

Now, verify the hash using the command below. (Like before, this would
fail if the original file had been changed.)

shasum -c file.txt.sha1

You should see the following output, indicating that the verification
was a success:

file.txt: OK

Click *Check my progress* to verify the objective.

SHA1 Hash

### SHA256

**SHA without any newline characters (from stdin)**

<img src="./media/image24.png" style="width:6.5in;height:0.47014in" />

The same tool can be used to create a SHA256 sum. The "-a" flag
specifies the algorithm to use, and defaults to SHA1 if nothing is
specified. To generate the SHA256 sum of the file, use this command:

shasum -a 256 file.txt \> file.txt.sha256

You can output the contents of this file, the same as before:

cat file.txt.sha256

SHA256's increased security comes from it creating a longer hash that's
harder to guess. You can see that the contents of the file here are much
longer than the SHA1 file:

7a54af37c15a82e157c8368324e7234d22778ce845219cd16172895a608030ff
file.txt

Finally, to verify the SHA256 sum, you can use the same command as
before:

shasum -c file.txt.sha256

Click *Check my progress* to verify the objective.

SHA256 Hash

### \[Windows 10\] Hashing a files, dirs, and values

#### In GUI

*Using cmd prompt*

1.  **Encrypt the file**

    1.  Right-click \> Properties \> Advanced \> “Encrypt Contents to
        secure data”

#### Using Command prompt

**Hash the file** (creates a checksumf for a file)

certutil \<flag\> \<file path\> \<algorithm\>

**certutil –hashfile C:\Users\Joe\Documents\secretfile.txt SHA512**

^ That will return the hash value – save that for later comparison

#### Using Powershell

<https://adamtheautomator.com/get-filehash/>

<img src="./media/image25.png" style="width:6.5in;height:3.50486in"
alt="Text Description automatically generated" />

<img src="./media/image26.png" style="width:6.5in;height:4.92431in"
alt="Text Description automatically generated" />

<img src="./media/image27.png" style="width:6.5in;height:3.22569in"
alt="Text Description automatically generated" />

<img src="./media/image28.png" style="width:6.5in;height:5.39028in"
alt="Text Description automatically generated" />

<img src="./media/image29.png" style="width:6.5in;height:4.72431in"
alt="Text Description automatically generated" />

<img src="./media/image30.png" style="width:6.5in;height:4.27014in"
alt="Text Description automatically generated" />

<img src="./media/image31.png" style="width:6.5in;height:3.25in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image32.png" style="width:6.5in;height:5.26042in"
alt="Text Description automatically generated" />

## Encryption: Creating/inspecting keys, encrypting/decrypting and signing

### RSA Encryption \[Asymmetric\]

#### Key Management

##### Checking for existing keys

sudo find ~ -maxdepth 3 -type f | xargs file | egrep -Hi
'(private|public)\s?key' | sort -k1 | awk -F: '{ print $2,$3 }'

^ this command finds all files (three levels within your home folder)
that are keys based off the file type.

<img src="./media/image33.png" style="width:6.5in;height:1.43542in"
alt="A picture containing text Description automatically generated" />

**<u>Other methods below (not as thorough/cool)</u>**

An SSH key is a cryptographically secure identifier. It’s like a really
long password used to identify your machine. GitHub uses SSH keys to
allow you to upload to your repository without having to type in your
username and password every time.

First, we need to see if you have an SSH key already installed. Type
this into the terminal:

```
ls ~/.ssh/id_rsa.pub
```

This works as well (searches for any public key)

```
$ ls ~/.ssh/\*.pub
```

If a message appears in the console containing the text “No such file or
directory”, then you do not yet have an SSH key, and you will need to
create one. If no message has appeared in the console output, you
already have a key and can proceed to step 2.4.

(Alternative)Checking for existing SSH keys (GitHub guide)

<https://docs.github.com/en/github/authenticating-to-github/checking-for-existing-ssh-keys>

Before you generate an SSH key, you can check to see if you have any
existing SSH keys.

Note: DSA keys (SSH-DSS) are no longer supported. Existing keys will
continue to function, but you cannot add new DSA keys to your GitHub
account.

<img src="./media/image34.png" style="width:6.5in;height:3.16181in"
alt="Graphical user interface, text, application, email Description automatically generated" />

If you don't have an existing public and private key pair, or don't wish
to use any that are available to connect to GitHub, then [generate a new
SSH
key](https://docs.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

If you see an existing public and private key pair listed (for
example *id_rsa.pub* and *id_rsa*) that you would like to use to connect
to GitHub, you can [add your SSH key to the
ssh-agent](https://docs.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#adding-your-ssh-key-to-the-ssh-agent).

##### Change/remove password of a private ssh key (openssh)

<img src="./media/image38.png"
style="width:4.42384in;height:0.17362in" />

ssh-keygen -p -f \<private-key-path\>

This will then prompt you to enter the keyfile location, the old
passphrase, and the new passphrase (which can be left blank to have no
passphrase).

^ **Must run as root** (at least from my testing)

##### Ssh-keygen vs Openssl

- **Library**

  - Ssh-keygen used openssh

  - Openssl uses openssl

- **File(s)**

  - Ssh-keygen : Key generation results in two keys (a public and a
    private) usually of the form **id_rsa** and **id_rsa.pub**.

  - Openssl : Key generation results in the creation of one key (usually
    PEM) which is a private key. Public key from private key can be
    generated from private key.

##### Generating a new key (links)

**Helpful Links for study**

<https://www.youtube.com/watch?v=mNtQ55quG9M>

<https://youtu.be/WgZIv5HI44o>

<https://www.computerhope.com/unix/wget.htm>

<https://mohitgoyal.co/2021/01/12/basics-of-ssh-generate-ssh-key-pairs-and-establish-ssh-connections-part-1/>

<https://mohitgoyal.co/2021/01/13/basics-of-ssh-generate-ssh-key-pairs-and-establish-ssh-connections-part-2/>

<https://kb.heficed.com/en/articles/2713461-how-to-generate-and-use-ssh-private-public-keys>

**TroubleShooting**

<https://phoenixnap.com/kb/ssh-permission-denied-publickey>

<https://linuxhint.com/ssh-permission-denied-publickey-error/>

<https://bitlaunch.io/blog/how-to-fix-the-ssh-permission-denied-publickey-error/>

<https://www.systutorials.com/how-to-choose-the-key-used-by-ssh-for-a-specific-host/>

<https://blog.softhints.com/add-ssh-key-and-permission-denied-publickey/>

<https://linuxhandbook.com/fix-permission-denied-publickey/>

Complete Windows outline:
<https://syntaxbytetutorials.com/add-a-github-ssh-key-on-windows/>

##### Using OpenSSH (ssh-keygen)

###### (OPTION 1) The basic command (not preferred)

ssh-keygen

- On Unix-based (Linux/Mac) – run command directly in terminal

- On windows (with no SSH support) use putty or bash

<img src="./media/image35.png" style="width:6.5in;height:0.86389in"
alt="Text Description automatically generated" />

<img src="./media/image36.png" style="width:6.5in;height:2.11458in"
alt="Graphical user interface, text, application, email Description automatically generated" />

If you get perms error – make sure .ssh dir has proper perms for user
creating the key.

---

###### (OPTION 2)  Command with associated email (preferred)

To create a new SSH key, run the following command inside your terminal.
The -C flag followed by your email address ensures that GitHub knows who
you are.(Technically you don’t need the –C flag or the email as it would
still work without it).

Note: The angle brackets (\< \>) in the code snippet below indicate that
you should replace that part of the command with the appropriate
information. Do not include the brackets themselves in your command. For
example, if your email address is odin@theodinproject.com, then you
would type ssh-keygen -C odin@theodinproject.com. You will see this
convention of using angle brackets to indicate placeholder text used
throughout The Odin Project’s curriculum and other coding websites, so
it’s good to be familiar with what it means.

ssh-keygen -C \<youremail\>

**Alternative (specifying algorithm and associated emal – PREFERRED FOR
GITHUB)**

$ ssh-keygen -t rsa -b 4096 -C <example@example.com>

> The algorithm is selected using the -t option and key size using
> the -b option. The following commands illustrate:
>
> ssh-keygen -t rsa -b 4096
>
> ssh-keygen -t dsa
>
> ssh-keygen -t ecdsa -b 521
>
> ssh-keygen -t ed25519

- When it prompts you for a location to save the generated key, just
  push Enter.

- Next, it will ask you for a password; enter one if you wish, but it’s
  not required.

After this you will see a new hidden folder ( titled ‘.SSH’) in the
current directory which will now contain two files: (i) an rsa key and a
(ii) public key.

<img src="./media/image37.png" style="width:6.5in;height:5.10625in"
alt="Graphical user interface, application Description automatically generated" />

---

##### Using openssl (openssl)

Using openssl only generates a private key however you can generate a
public key from a public key.

###### OpenSSL RSA Cheat Sheet

To remove the pass phrase on an RSA private key:

- openssl rsa -in key.pem -out keyout.pem

To encrypt a private key using triple DES:

- openssl rsa -in key.pem -des3 -out keyout.pem

To convert a private key from PEM to DER format:

- openssl rsa -in key.pem -outform DER -out keyout.der

To print out the components of a private key to standard output:

- openssl rsa -in key.pem -text -noout

To just output the public part of a private key:

- openssl rsa -in key.pem -pubout -out pubkey.pem

Output the public part of a private key in RSAPublicKey format:

- openssl rsa -in key.pem -RSAPublicKey_out -out pubkey.pem

###### Generate a private RSA key 

**Generate a 2048 bit RSA Private Key**

Note: The NSA Recommends 3072 bit key or higher.

The key size or bit length of public keys determines the strength of
protection. For example, 2048-bit RSA keys are often employed in SSL
certificates, digital signatures, and other digital certificates. This
key length offers sufficient cryptographic security to keep hackers from
cracking the algorithm.

- openssl genrsa -out private-key.pem 2048

- <img src="./media/image39.png" style="width:3.97197in;height:1.35447in"
  alt="Graphical user interface, application Description automatically generated" />

In this example, we have used a key length of 2048 bits.

This gives us a PEM file containing our RSA private key, which should
look something like the following:

—–BEGIN RSA PRIVATE KEY—–  
—–END RSA PRIVATE KEY—–

###### Generate a password-protected private RSA key 

All you need to do is specify the algorithm that should be used to
encrypt the private key

openssl genrsa \<algo\> -out \<privatekeyname\> \<bit-size\>

*Supported algorithms*

**-aes128|-aes192|-aes256|-camellia128|-camellia192|-camellia256|-des|-des3|-idea**

- openssl genrsa -des3 -out private.pem 2048

That generates a 2048-bit RSA key , encrypts them with a password we
provide and writes them to a file.

 

Another RSA key created with a 4096-bit key

<img src="./media/image40.png" style="width:6.5in;height:0.37083in" />

Why not use AES for everything?

openssl genrsa -aes256 -out private.pem 2048

###### View existing/created keys

openssl rsa -text in mykey.key

###### overview and verbose

In this lab, you'll learn how to generate RSA private and public key
pairs using the OpenSSL utility.

OpenSSL is a commercial-grade utility toolkit for Transport Layer
Security (TLS) and Secure Sockets Layer (SSL) protocols. It's also a
general-purpose cryptography library. OpenSSL is licensed under an
Apache-style license, which means that you're free to get it and use it
for commercial and non-commercial purposes (subject to some simple
license conditions).

**What you'll do**

- **OpenSSL:** You'll explore what generating key pairs looks like using
  OpenSSL.

- **Encrypt and decrypt:** You'll use the key pair to encrypt and
  decrypt some small amount of data.

- **Verify:** You'll use the key pair to sign and verify data to ensure
  its accuracy.

Before you can encrypt or decrypt anything, you need a private and a
public key, so let's generate those first!

**Generating a private key**

Remember, a key pair consists of a public key that you can make publicly
available, and a private key that you need to keep secret. Shhhh. :)
When someone wants to send you data and make sure that no one else can
view it, they can encrypt it with your public key. Data that's encrypted
with your public key can only be decrypted with your private key, to
ensure that only you can view the original data. This is why it's
important to keep private keys a secret! If someone else had a copy of
your private key, they'd be able to decrypt data that's meant for you.
Not good!

First, let's generate a 2048-bit RSA private key, and take a look at it.
To generate the key, enter this command into the terminal:

openssl genrsa -out private-key.pem 2048

Copied!

content_copy

You should see the following output (or something very similar) :

Generating RSA private key, 2048 bit long modulus (2 primes)

................+++++

..........................................+++++

e is 65537 (0x010001)

This command creates a 2048-bit RSA key, called "private_key.pem". The
name of the key is specified after the "-out" flag, and typically ends
in ".pem". The number of bits is specified with the last argument. To
view your new private key, use "cat" to print it to the screen, just
like any other file:

cat private_key.pem

Copied!

content_copy

The contents of the private key file should look like a large jumble of
random characters. This is actually correct, so don't worry about being
able to read it:

-----BEGIN RSA PRIVATE KEY-----

MIIEowIBAAKCAQEA4kNMSmssCSYbOnq/UAHGH5xx9gjZaOiST3JQQtJO11L/YeBO

8DOHc7UawNADA/XDBAnGZih1M8T1PGc6Vk5SW2Lb8FMf9zG2XhYpCACFFPJAW00q

s4s1JesdugOprHZ8Jmm/QJl4KuCjlY/XdviCvcbxROIQ2mglR8nW1QWrhECQNBfo

dRSuTwmW3qBSW/Xd5pmTpP4GHCyUfRO9YCF/tZYtVMYg4FOqdGaTHRZbs6peMV4D

lSjZHDonnsGK0UJpxQNbtJEcG7vr7Vl8ziVWY5RUDND7nZYlQlbqxvvqbPPt+px3

4pAZ58eyOqeAmYBc8mwNoXp4YrC2deFng7zrKwIDAQABAoIBAB6SR0Ga33VQ/8bU

BPtzceidg8xhf7asDfDMGkodDmgLn9QCscfEvp2Er9uzf2TOlQ37oCH3f3aCOzxx

GjHFHV2Zquv630vQHLrztZGOOG0PGmD7uTRPL9wyu26BxjA2RioOibfZxKHOfmvb

5pn9k/S+Z6UOAobwIXFktTFNNdKFgalax813FlxFfmmoOC8kE30W6mP6iecP+ojm

xf577RhwR+PdE5zNNvm2F8j5ZWP39pboX7e3eYUCsEyPmVu1MSMTXrHHg6KNhCty

Qu1JfrAaisch+6vrAzfuP7t0WiILzieQgZzFDpI9HziwwOtCw+EKQhHCOPurWcO6

ByZUBzkCgYEA9aEprwqutbXB5H3QinxqXLInAH+wy8oTAMS6nV1sisIos6dD3CLO

u2fLRegv8PEUopASnzyv5PWU/iS+VJjdBCco59hmwW+7CVpaOJXlJ1qpznPVJmyx

pWsinM9Ug23GDd/jd61yKux22773RSGCYs9N7FVww5WYcDlWHLUFPk0CgYEA69DQ

h2iFuDSPonG8GPS6hf/KVRQaJZqGAINCk/2txTWmaz9VPdWT25+rxBzIoQOYAC4P

NjPHo/gJLrO/y6X6lAKBCje/Otb9E7GZwH0pFc7MxtQVR4ik6/7To3ancXNmawHe

owWZHDBRK+Ot33nZ+tYvAq48zE7rxNxsctZ9O1cCgYASsd12UR3S/q5vMZQ5thZy

T6zgQNe36v1fRZneeEnWlch7Q/PKQWvyn4e9Hlrnv7GOXeDM9dV9W6OnZCyIS8om

ksRuQO4xMsvNfm73d5ElWaUq7W3/qq4qpOjRfoY0Kpq0W6H4bd8OnUi+mN5BCLff

xV9s6WPXvv8HK5X+QVjQ0QKBgBrMqGY7IrdEge5cLpxHc8s2vq/ckPwlC4WTZUWc

VttKtZcKo41bcGpNQyAOhV6HIgcjNOdcCxw/XAvKsclbG5cmkbOvkjQFqs1KKccO

clTgI7WU9LYkeVm4pCS3n1/tVX5jwAGW6Uei1ha+0UvMdVFkdgM/+fjeHz1IL6r9

ZU4RAoGBALi33UjlJUYVMXPZc/JyFk8yyvRpYMRhmW7mQxR8gx0i1rNolPSccRkj

3NO+e1k86yyk3RsqBdixGKYDp2JqS+Aj7eHlxvUcrCAnpk9l96q8yuhQ4mJUWqs7

/hW6bxUPjDZ9BxprGZRL4ZLgPL+6C4Q4rE8TZu/5qQYDIy+ab03t

-----END RSA PRIVATE KEY-----

**Head's up:** Your private key will look similar to this, but it won't
be the same. This is super important, because if openssl was generating
the same keys over and over, we'd be in serious trouble!

Click *Check my progress* to verify the objective.

Generate private key

Check my progress

**Generating a public key**

Now, let's generate the public key from the private key, and inspect
that one, too. Now that you have a private key, you need to generate a
public key that goes along with it. You can give that to anyone who
wants to send you encrypted data. When data is hashed using your public
key, nobody will be able to decrypt it unless they have your private
key. To create a public key based on a private key, enter the command
below. You should see the following output:

openssl rsa -in private_key.pem -outform PEM -pubout -out public_key.pem

content_copy

writing RSA key

You can view the public key in the same way that you viewed the private
key. It should look like a bunch of random characters, like the private
key, but different and slightly shorter:

cat public_key.pem

content_copy

-----BEGIN PUBLIC KEY-----

MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4kNMSmssCSYbOnq/UAHG

H5xx9gjZaOiST3JQQtJO11L/YeBO8DOHc7UawNADA/XDBAnGZih1M8T1PGc6Vk5S

W2Lb8FMf9zG2XhYpCACFFPJAW00qs4s1JesdugOprHZ8Jmm/QJl4KuCjlY/XdviC

vcbxROIQ2mglR8nW1QWrhECQNBfodRSuTwmW3qBSW/Xd5pmTpP4GHCyUfRO9YCF/

tZYtVMYg4FOqdGaTHRZbs6peMV4DlSjZHDonnsGK0UJpxQNbtJEcG7vr7Vl8ziVW

Y5RUDND7nZYlQlbqxvvqbPPt+px34pAZ58eyOqeAmYBc8mwNoXp4YrC2deFng7zr

KwIDAQAB

-----END PUBLIC KEY-----

**Head's up:** Like your private key, your public key will look
different than the one in this image.

Now that both of your keys have been created, and you can start using
them to encrypt and decrypt data. Let's dive in!

Click *Check my progress* to verify the objective.

Generate public key

##### Create public key from Private key

###### \[Openssl\] Create public key from Private key

**Generate corresponding Public key**

- openssl rsa -in private-key.pem -pubout -out public-key.pem

- to explicitly specify the outform add ‘-outform PEM’ like so …

- openssl rsa -in private_key.pem -outform PEM -pubout -out
  public_key.pem

This should give us another PEM file, containing the public key.

The PEM public key format uses the header and footer lines:

—–BEGIN PUBLIC KEY—–  
—–END PUBLIC KEY—–

 <img src="./media/image41.png" style="width:4.72941in;height:1.45146in"
alt="Graphical user interface, text, application Description automatically generated" />

###### \[Openssh\] Create public key from private key

In this example we’re using a PEM key as our private key

<img src="./media/image42.png" style="width:6.5in;height:2.15694in"
alt="Website Description automatically generated with medium confidence" />

We can also do with a standard OpenSSH private key

<img src="./media/image43.png" style="width:3.9377in;height:0.68059in"
alt="Text Description automatically generated with medium confidence" />

<img src="./media/image44.png" style="width:4.8058in;height:6.03503in"
alt="Graphical user interface, text, application Description automatically generated" />

##### Converting Openssl private key (pem) to OpenSSH Public key \[PuttyGen\]

***Please note***: PEM files can be anything…in some cases, a PEM will
actually already be in the RSA format. In which case no conversion is
necessary. At most, you would just need to create your public key based
off this private RSA to have your full pair. Spent to much time trying
to convert what I though was a pem key to an RSA key (open ssh
compatible key) which was already an RSA key.

Use ‘i’ for import

<img src="./media/image45.png"
style="width:3.22933in;height:0.20834in" />

Example: ssh-keygen -i -m PEM -f myfile.pem

**RTFM!**

<img src="./media/image46.png" style="width:6.5in;height:0.33819in"
alt="Text Description automatically generated" />

<img src="./media/image47.png" style="width:6.5in;height:0.35625in"
alt="Graphical user interface, text Description automatically generated" />

<img src="./media/image48.png" style="width:4.77802in;height:4.70858in"
alt="Text Description automatically generated" />

#### Encrypting files using openssl

You'll simulate someone encrypting a file using your public key and
sending it to you, which allows you (and only you!) to decrypt it using
your private key. Similarly, you can encrypt files using other people's
public keys, knowing that only they will be able to decrypt them.

You'll create a text file that contains some information you want to
protect by encrypting it. Then, you'll encrypt and inspect it. To create
the file, enter the command below. It will create a new text file called
"secret.txt" which just contains the text, "This is a secret message,
for authorized parties only". Feel free to change this message to
anything you'd like.

echo 'This is a secret message, for authorized parties only' \>
secret.txt

Then, to encrypt the file using your public key, enter this command:

openssl rsautl -encrypt -pubin -inkey public_key.pem -in secret.txt -out
secret.enc

This creates the file "secret.enc", which is an encrypted version of
"secret.txt".

**OAEP (Optimized Asymmetric Encryption Padding)**

Secure implementations of RSA (when handling file) must use OAEP. This
can be done by adding the **-oaep** flag.

We can revise our previous command as follows:

openssl rsautl -encrypt -pubin -inkey public_key.pem -in secret.txt -out
secret.enc -oaep

**Why use OAEP**: Since RSA doesn’t natively provide any nonce, RSA will
produce the same cyphertext when encrypting identical text with the same
public key.

This can potentially be used by attackers to break the encryption.

Both the preprocessing and postprocessing steps in OAEP address this to
further secure the encrypted data.

Notice that if you try to view the contents of the encrypted (binary)
file, the output is garbled. This is totally normal for encrypted
messages because they're not meant to have their contents displayed
visually.

**Another example**

<img src="./media/image49.png" style="width:5.25073in;height:1.94819in"
alt="Graphical user interface, text Description automatically generated" />

Here's an example of what displaying the encrypted file "secret.enc"
looks like in the nano editor using the following command below:

nano ~/secret.enc

Output:

^? \< e ^@vmD ^B% r\*M o^R ^O 8 X { ^\\^B ^}= 1i T 9~ ^RT^\\Px ^T^l n ^G
^O ^i iN (W \[ ^$

^a^d~m , d Tq L \< J ^Q bdQ

=Q R\[^kT ^G iq GG ^T { UZ^dV8^A ^~O#koj^N^^ K vT ^O3 ^Tn^oP^l^Pa
^u3^G^N^i0=c{ ^tR09 o@^d$

^G Get Help ^O Write Out ^W Where Is ^K Cut Text ^J Justify ^C Cur Pos

^X Exit ^R Read File ^\\ Replace ^U Uncut Text ^T To Spell ^\_ Go To
Line

To exit from the nano editor, use the command **Ctrl-X**.

The encrypted file will now be ready to send to whoever holds the
matching private key. Since that's you, you can decrypt it and get the
original contents back.

#### Decrypting files using openssl

Remember that we must use the private key to decrypt the message, since
it was encrypted using the public key. Go ahead and decrypt the file,
using this command:

openssl rsautl -decrypt -inkey private_key.pem -in secret.enc

This will print the contents of the decrypted file to the screen, which
should match the contents of "secret.txt":

This is a secret message, for authorized parties only

You can also output the decrypted contents to a file with the “-out”
option

openssl rsautl -decrypt -inkey private_key.pem -in secret.enc -out
myfile.txt

OAEP Consideration

Be sure to add the “-oaep” flag if the private key was created with oaep

openssl rsautl -decrypt -inkey private_key.pem -in secret.enc -oaep

<img src="./media/image50.png" style="width:5.4591in;height:1.90652in"
alt="Text Description automatically generated" />

#### Sending/Receiving RSA encrypted files

So how do we send encrypted files if they are all garbled? **We Base64
encode it!**

openssl base64 -in cipher.bin -out cipher.txt

^ replace “cipher.bin” with your encrypted msg.

Decrypting

<img src="./media/image51.png" style="width:6.5in;height:4.975in"
alt="Table Description automatically generated" />

### AES Encryption \[Symmetric\]

**Encrypting by password**

openssl aes256 -in secret.txt -out secret.enc

**Decrypting**

*Note (reverse the in/out paths – use ‘d’ for decrypt)*

openssl aes256 -d -in secret.enc -out secret.txt

Print to standard output (remove ‘out’)

<img src="./media/image52.png"
style="width:4.21934in;height:0.30213in" />

Adding password as an arg with ‘k’ (key) switch

<img src="./media/image53.png"
style="width:5.90707in;height:0.41672in" />

<img src="./media/image54.png" style="width:6.5in;height:5.09861in"
alt="Text Description automatically generated" />

#### Encryption schemes and block cypher modes

**Encryption Scheme:** This is the combination of the **block cipher**
(encryption algorithm) and the **block cypher mode** in use. This

*Consider this*

openssl enc aes-256-ctr -pbkfdf2 -e -a -in myfile.txt -out encrypted.txt

“aes-256-ctr”: This is the **Encryption scheme**

- aes: block cipher/ encryption algorithm

- 256: block size in bits

- ctr: block cipher mode (secure)

  1.  Insecure block cypher modes like ECB should be avoided.

AES Options (per openssl man page)

<img src="./media/image55.png" style="width:6.5in;height:1.68472in"
alt="A computer screen with white text AI-generated content may be incorrect." />

*More on cypher modes*

<https://stackoverflow.com/questions/1220751/how-to-choose-an-aes-encryption-mode-cbc-ecb-ctr-ocb-cfb>

<https://www.quora.com/Which-is-recommended-AES-CBC-mode-or-AES-CTR-mode-AES-CBC-and-crypto>

Since an Encryption scheme relies on the combination of the block cypher
and block cypher mode, if either have weak implementations the entire
encryption scheme will be considered weak.

“pbkfdf2”: This is the key derivation method.

- Pbfkdf2 is considered a secure key derivation method whereas others
  like LCG should be avoided.

Its for the reasons above why its best to be verbose about our commands
when encrypting/decrypting with openssl.

#### \[Windows 10\] Encryption in Windows

##### Using command line

Use **aescrypt** utility: <https://www.aescrypt.com/download/>

**Encrypt a file with a password**

aescrypt -e -p \<password\> \<file\>

aescrypt -e -p superpass myfile.txt

<img src="./media/image56.png" style="width:6.5in;height:1.78056in"
alt="Text Description automatically generated" />

<img src="./media/image57.png" style="width:6.5in;height:1.47569in"
alt="Graphical user interface, text, application Description automatically generated" />

**Decrypt a file with a password**

aescrypt -d -p \<password\> \<file\>

<img src="./media/image58.png" style="width:6.5in;height:1.85694in"
alt="Text Description automatically generated" />

##### Using Powershell

<img src="./media/image59.png" style="width:6.5in;height:4.28194in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image60.png" style="width:6.5in;height:3.74861in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image61.png" style="width:6.5in;height:8.05069in"
alt="Graphical user interface, text, application, email Description automatically generated" />

From this point onwards the password or the secret can be used in the
script that’s required to have it.

<img src="./media/image62.png" style="width:6.5in;height:4.22431in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image63.png" style="width:6.5in;height:3.43819in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image64.png" style="width:6.5in;height:2.32569in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image65.png" style="width:6.5in;height:4.52847in"
alt="Graphical user interface, text, application, email Description automatically generated" />

### Encrypting with PGP \[Asymmetric\]

PGP is an a type of asymmetric encryption which uses symmetric
encryption to encrypt the private key by default (which can be done in
other encryption offerings – like RSA, but no by default).

Using GUI:

- **Windows application** (gpg4win) : <https://www.gpg4win.org>

- **Windows application and linux GUI (gua):**
  <https://www.youtube.com/watch?v=CEADq-B8KtI>

**Important directory:** ~/.gnupg

<img src="./media/image66.png" style="width:6.5in;height:2.19028in"
alt="Text Description automatically generated" />

#### Using default keys

Steps

gpg -c secret.txt

*^ creates secret.txt.gpg*

gpg -d secret.txt.gpg

“c” : encrypt (password prompt”

“d” : decrypt

<img src="./media/image67.png" style="width:4.12521in;height:2.79181in"
alt="Text Description automatically generated" />

Note: password won’t prompt to decrypt if on same machine that was used
to encrypt.

#### Using custom keys

#### Creating keys and initial configuration

Before creating keys, it’s a good idea to install a program to generate
system entropy

sudo apt install rng-tools -y

sudo rngd -r /dev/urandom

**Keyring**: a sort of key manager which holds keys you intend to use.
Much like ssh-agent.

1.  Install pgp

    1.  sudo apt-get install gap gnupg2 -y

    2.  Alternatively, you can additionally install gpa as well. Running
        ‘gpa’ will activate the linux gui for managing keys, encryption,
        and decryption.

        1.  <img src="./media/image68.png"
            style="width:4.22586in;height:0.23748in" />

2.  Generate a key

    1.  gpg --full-generate-key or… gpg –gen-key

    2.  Next, you will need to create an ID for people to identify your
        key. The user ID will be generated from your real name, email
        address and comment. Press “O” to confirm your choices

    3.  Now create a password for your secret or public key

    4.  Once you’ve done this, you can generate the public key. Type
        something on your keyboard or move your mouse around to create
        entropy for the random number generator

3.  List public keys:

    1.  list keys: sudo gpg --list-keys or sudo gpg –list-public-keys

    2.  By name:sudo gpg --list-keys \[name\]

        1.  <img src="./media/image69.png"
            style="width:5.60887in;height:0.66336in" />

        2.  “sub”: This is the private key.

4.  Export public key to a file

    1.  gpg --output myfile --export \[key name\]

    2.  gpg --output publickey.txt --export
        052E036B88E8876E9EDBF25BD956195BEAE573E1

5.  Export private key to a file

    1.  gpg --output privatekey –export-secret-key \[key name\]

    2.  gpg --output privatekey –export-secret-key
        052E036B88E8876E9EDBF25BD956195BEAE573E1

Note: critical information is store in the ~/.gnupg directory:

<img src="./media/image70.png" style="width:6.5in;height:1.3in"
alt="Text Description automatically generated" />

#### Uploading/Importing keys to/from ubuntu key server

**Uploading**

List keys and take note of public key ID

<img src="./media/image71.png" style="width:6.5in;height:1.31458in"
alt="Text Description automatically generated" />

Then, send your public key to ubunt key server with…

gpg –send-keys –keyserver khp://keyserver.ubuntu.com \<PUB_KEY_ID\>

<img src="./media/image72.png" style="width:6.5in;height:0.37292in" />

**Importing/Receiving keys**

gpg –keyserver hkp://keyserver.ubuntu.com –recv-key \<PUB_KEY_ID\>

<img src="./media/image73.png" style="width:6.5in;height:0.77639in" />

Run list keys again to see the key imported

<img src="./media/image74.png" style="width:6.5in;height:2.06111in"
alt="Text Description automatically generated" />

You can subsequently sign items with the public key so that only the key
owner can unecrypt it with their private key.

You can specify the recipient key (public key) by name for key id

<img src="./media/image75.png" style="width:6.5in;height:3.85903in"
alt="Text Description automatically generated" />

#### Encrypting a file

*As a sender, you must encrypt a message using the public key of the
intended recipient.*

1.  Download/copy your friend’s public key into a file

    1.  scp ssh droplet01:./keys/friend_publickey .

2.  Import your friend’s public key into the keyring

    1.  gpg --import friend_publickey

        1.  <img src="./media/image76.png"
            style="width:5.80858in;height:0.56224in" />

    2.  Now when you list your keys you should see your friend’s public
        key

        1.  <img src="./media/image77.png" style="width:5.11891in;height:0.87557in"
            alt="Text Description automatically generated" />

    3.  You can list this key individual by name as well

        1.  <img src="./media/image78.png" style="width:6.5in;height:0.84097in"
            alt="Text Description automatically generated" />

    4.  Note: Your private key should still be under your secret keys:

        1.  <img src="./media/image79.png" style="width:5.59077in;height:0.96943in"
            alt="Text Description automatically generated" />

3.  Import your private key

    1.  *Note: Importing your private key into the gpg manager allows
        you to decrypt received messages.*

    2.  sudo gpg --import privatekey

    3.  <img src="./media/image80.png" style="width:6.5in;height:1.32431in"
        alt="Text Description automatically generated" />

4.  Save your message into a file and encrypt your message…

    1.  using the ‘recipient’ flag to pass in the name of the public key
        belonging to the intended recipient

    2.  and using the ‘encrypt’ flag to pass in the file you wish to
        encrypt

    3.  <img src="./media/image81.png" style="width:6.08261in;height:2.09772in"
        alt="Text Description automatically generated" />

5.  Send the file to the recipient (using scp in this example)

    1.  scp mymessage.txt.gpg ssh droplet01:./cypher/

#### Decrypting a file

As the intended recipient you must use your private key to decrypt the
file.

1.  Make sure you import your private key into the key ring. List the
    keys to make sure you have a key that macthes the name of the key
    used to encrypt the file. Note how I used the ‘Droplet01’ key in
    both cases.

    1.  <img src="./media/image82.png" style="width:5.60026in;height:1.67649in"
        alt="Text Description automatically generated" />

2.  Use decrypt flag and reference the file you wish to decrypt

    1.  gpg --decrypt mymessage.txt.gpg

3.  Enter the password for your privatekey

    1.  <img src="./media/image83.png" style="width:4.27934in;height:1.43285in"
        alt="Text Description automatically generated" />

4.  Voila

    1.  <img src="./media/image84.png"
        style="width:4.80533in;height:0.53033in" />

5.  You can also decrypt the message into a file using the ‘output’ flag

    1.  gpg --output plaintextmsg --decrypt mymessage.txt.gpg

6.  One can also include the password as an argument

    1.  gpg --passphrase '/^!01101001\_$/gi' --decrypt mymessage.txt.gpg

    2.  <img src="./media/image85.png" style="width:6.5in;height:0.55139in" />

    3.  ^ Useful if you are automating decrypting Ideally you would have
        a way to encrypt/decrypt your password (say using AES) and this
        value is decrypted after being pulled from a database or via a
        user portal for example.

## Digital Signature: Signing with Hash with a private key 

Great demo: <https://www.youtube.com/watch?v=ANMxXCoLm9w>

As we know, encrypting something with someone’s **public key** makes
sure that only the person with the private key can decrypt that item.

However, the inverse (**encrypting something with your <u>private
key</u>**) is called signing and this ensures that anyone with your
public key can decrypt that item. Signing is used for authenticity.

For example, a trusted entity can give out their public key. To prove
that someone is indeed that same trusted entity they must have the
associated private key which belongs to that public/private key pair.
However, they can’t just share their private key. But what they could do
is encrypt something with that private key. This process is called
signing and anybody with the proper public key would be able to decrypt
that msg and this would be enough to prove the authenticity of the
entity in question.

### Creating signature and verifying it with openssl

Now, you'll create a hash digest of the message, then create a digital
signature of this digest. Once that's done, you'll verify the signature
of the digest. This allows you to ensure that your message wasn't
modified or forged. If the message was modified, the hash would be
different from the signed one, and the verification would fail.

To create a hash digest of the message, enter this command:

openssl dgst -sha256 -sign private_key.pem -out secret.txt.sha256
secret.txt

Copied!

content_copy

This creates a file called "secret.txt.sha256" using your private key,
which contains the hash digest of your secret text file.

With this file, anyone can use your public key and the hash digest to
verify that the file hasn't been modified since you created and hashed
it. To perform this verification, enter this command:

openssl dgst -sha256 -verify public_key.pem -signature secret.txt.sha256
secret.txt

Copied!

content_copy

This should show the following output, indicating that the verification
was successful and the file hasn't been modified by a malicious third
party:

Verified OK

If any other output was shown, it would indicate that the contents of
the file had been changed, and it's likely no longer safe.

## Digital Certificate Management

### Creating Certificates Using OpenSSL

**Create an RSA Self-Signed Certificate Using OpenSSL**

Now that we have a private key, we can use it to generate a self-signed
certificate. This is not required, but it allows us to use the key for
server/client authentication, or gain X509 specific functionality in
technologies

The ‘req’ switch means we are creating a CSR (r = request)

#### Creating the Certificate Signing Request (CSR)

##### If we already have a key…

<img src="./media/image86.png"
style="width:5.81132in;height:0.34942in" />

^ here our referenced key is “tutorial…”

##### If we don’t already have a key… 

This creates a key and creates a CSR in one go.

###### Using RSA

You can create a key from scratch ([see bookmark
here](#using-openssl-openssl)) or create on one the fly as done below.

<https://www.youtube.com/watch?v=ZAE9p1_N6_Q>

Open a terminal and browse to a folder where you would like to generate
your keypair.

To generate a **4096-bit** CSR you can replace the rsa:**2048** syntax
with rsa:**4096** as shown below.

<img src="./media/image87.png" style="width:6.5in;height:0.26111in" />
<img src="./media/image88.png" style="width:6.5in;height:0.3375in" />

- keyout : where to save private key

- out : where to save csr

<img src="./media/image89.png" style="width:6.5in;height:3.78056in"
alt="Text Description automatically generated" />

^ FQDN must be the host you wish to protect with this certificate.

###### Using ECDSA (Eliptic curve)

(uses parameter file instead of private key). Uses elliptical curve
algorithm.

First create a parameter file:

<img src="./media/image90.png" style="width:6.5in;height:0.28403in" />

Then create csr and reference your parameter file:

<img src="./media/image91.png" style="width:6.5in;height:0.53681in" />

Enter info as before:

<img src="./media/image89.png" style="width:6.5in;height:3.78056in"
alt="Text Description automatically generated" />

^ FQDN must be the host you wish to protect with this certificate.

One liner

<img src="./media/image92.png" style="width:6.5in;height:0.42639in" />

*Note: You will be prompted to enter a password in order to proceed.
Keep this password as you will need it to use the Certificate.*

##### Verifying a csr

<img src="./media/image93.png" style="width:6.5in;height:0.27708in" />

#### Creating the Certificate (CRT)

##### Self-signed

<https://docs.microsoft.com/en-us/azure/iot-hub/tutorial-x509-self-sign>

A **self-signed certificate** is owned by the by same entity that signs
it, therefore the system is required to trust the entity directly in
order to verify the certificate’s authenticity. A certificate authority
(CA) is a server that issues digital certificates for entities and
maintains the associated private/public key pair. Certificate
authorities act as a trusted third-party by signing digital certificates
for entities. This allows clients to validate the authenticity of
certificates for entities through the certificate authority. A
certificate signing request (CSR) is a message sent to a certificate
authority (CA) so that an entity can apply for a certificate. A
certificate signing request typically includes information that should
is entered into the entity's certificate, such as its public key,
digital signature, and other identifying information

<img src="./media/image94.png" style="width:6.5in;height:0.57986in" />

^ the argument for the “signkey” must be a private key (your own if
self-signed or the key of a CA)

**Create self-signed cert and generate csr with existing key in one
line:**

openssl req -new -x509 -key private-key.pem -out cert.pem -days 360

^ here we reference our key named “private-key.pem”. Notice we also set
1yr for the key to expire. We also specified the x509 standard.

<img src="./media/image95.png" style="width:6.5in;height:0.71944in" />

<img src="./media/image96.png"
style="width:2.30365in;height:0.21904in" />

##### CA Signed

<img src="./media/image97.png" style="width:6.5in;height:1.05417in"
alt="Graphical user interface, text, application, email Description automatically generated" />

Signed with two things:

- CA : Certificate provided by CA

- CAkey : CA key (private key)

Upon finishing the CSR Generation process, CA will provide the customer
a private key in a cryptographic form. The next thing to do is to store
both the CSR and private key at a safe location on the server or on a
local drive.

In the case of domain validation (DV), the CA only needs to verify the
domain ownership. Once the customer demonstrates it, the certificate is
issued immediately. Whereas in the case of OV and EV certificates, the
verification process may take up to 10 days as the authority need to
verify all the business-related documents. If the documents provided by
the customer meet the requirement of CA, the certificate will be issued.

### Troubleshooting (s_client command)

OpenSSL provides SSL connectivity between clients and servers. SSL
relies on certificates generated as part of the Public Key
Infrastructure (PKI) design. When there are issues connecting to
webservers using SSL or TLS, the openssl **s_client command** can be
used to gather information about the server's certificate and aid in
troubleshooting the issue. 

### Assigning SSL cert on apache

<img src="./media/image98.png" style="width:6.5in;height:2.55903in"
alt="Text Description automatically generated" />

<img src="./media/image99.png" style="width:6.5in;height:1.17361in"
alt="Text Description automatically generated" />
